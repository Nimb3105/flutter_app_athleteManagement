// lib/screens/app/coach/exercises/exercise_detail.dart

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile_app/screens/app/coach/exercises/exercise_edit_screen.dart';
import 'package:video_player/video_player.dart';

class ExerciseDetailScreen extends StatefulWidget {
  final Exercise exercise;
  final String coachId;

  const ExerciseDetailScreen({
    super.key,
    required this.exercise,
    required this.coachId,
  });

  @override
  State<ExerciseDetailScreen> createState() => _ExerciseDetailScreenState();
}

class _ExerciseDetailScreenState extends State<ExerciseDetailScreen> {
  VideoPlayerController? _videoController;
  Future<void>? _initializeVideoPlayerFuture;
  late Exercise _currentExercise;

  @override
  void initState() {
    super.initState();
    _currentExercise = widget.exercise;
    _setupMedia(_currentExercise.gifUrl); // Gọi hàm setup media
  }

  String _getFullUrl(String relativePath) {
    // Nếu đường dẫn đã là một URL đầy đủ, trả về luôn
    if (relativePath.startsWith('http')) {
      return relativePath;
    }
    // Ngược lại, ghép với baseUrl
    return '${ApiConstants.baseUrl}$relativePath';
  }

  // Hàm helper để kiểm tra URL có phải là video không
  bool _isUrlVideo(String url) {
    // Không cần thay đổi hàm này
    final uri = Uri.tryParse(url);
    if (uri == null) return false;
    final path = uri.path.toLowerCase();
    return path.endsWith('.mp4') ||
        path.endsWith('.mov') ||
        path.endsWith('.avi');
  }

  void _setupMedia(String url) async {
    final fullUrl = _getFullUrl(url);

    // Nếu đang phát cùng video thì không cần khởi tạo lại
    if (_videoController?.dataSource == fullUrl) return;

    try {
      await _videoController?.pause();
      await _videoController?.dispose();
    } catch (e) {
      debugPrint("Error disposing video controller: $e");
    }

    _videoController = null;
    _initializeVideoPlayerFuture = null;

    if (_isUrlVideo(fullUrl)) {
      final uri = Uri.parse(fullUrl);
      _videoController = VideoPlayerController.networkUrl(uri);
      _initializeVideoPlayerFuture = _videoController!
          .initialize()
          .then((_) {
            if (!mounted) return;
            _videoController!
              ..setLooping(true)
              ..play();
            setState(() {});
          })
          .catchError((e) {
            debugPrint("Error initializing video: $e");
          });
    }
  }

  @override
  void didUpdateWidget(covariant ExerciseDetailScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Nếu bài tập thực sự đổi và URL media khác thì mới khởi tạo lại
    if (widget.exercise.id != oldWidget.exercise.id ||
        widget.exercise.gifUrl != oldWidget.exercise.gifUrl) {
      _setupMedia(widget.exercise.gifUrl);
    }
  }

  @override
  void dispose() {
    _videoController?.pause();
    _videoController?.dispose();
    super.dispose();
  }

  // ... (Hàm _showDeleteConfirmationDialog không đổi)
  void _showDeleteConfirmationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Xác nhận xóa'),
          content: Text(
            'Bạn có chắc chắn muốn xóa bài tập "${widget.exercise.name}" không?',
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Hủy'),
              onPressed: () => Navigator.of(dialogContext).pop(),
            ),
            TextButton(
              child: const Text('Xóa', style: TextStyle(color: Colors.red)),
              onPressed: () {
                Navigator.of(dialogContext).pop();
                if (widget.exercise.id != null) {
                  // Chỉ dispatch sự kiện khi có ID hợp lệ
                  context.read<ExerciseBloc>().add(
                    DeleteExercise(widget.exercise.id!),
                  );
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExerciseBloc, ExerciseState>(
      listener: (context, state) {
        if (state is LoadedExercise &&
            state.exercise.id == _currentExercise.id) {
          setState(() {
            _currentExercise = state.exercise;
            if (_currentExercise.gifUrl !=
                (_videoController?.dataSource ?? '')) {
              _setupMedia(_currentExercise.gifUrl);
            }
          });
        } else if (state is Exercise_Success &&
            state.message.contains('deleted')) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            _currentExercise.name,
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
        ),
        body: _buildBody(_currentExercise),
      ),
    );
  }

  // ... (_buildBody không đổi, nó sẽ gọi _buildMediaSection với exercise)
  Widget _buildBody(Exercise exercise) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
      children: [
        _buildMediaSection(exercise),
        const SizedBox(height: 32),
        _buildInfoCard(
          title: 'Thông tin cơ bản',
          icon: Icons.info_outline,
          children: [
            _buildDetailRow('Nhóm cơ', exercise.bodyPart),
            _buildDetailRow('Cơ mục tiêu', exercise.target),
            _buildDetailRow('Dụng cụ', exercise.equipment),
            _buildDetailRow('Đơn vị', exercise.unitType, isLast: true),
          ],
        ),
        const SizedBox(height: 24),
        _buildInfoCard(
          title: 'Cơ bắp tác động',
          icon: Icons.accessibility_new,
          children: [_buildChipList('Cơ phụ', exercise.secondaryMuscles)],
        ),
        const SizedBox(height: 24),
        _buildInfoCard(
          title: 'Hướng dẫn thực hiện',
          icon: Icons.integration_instructions_outlined,
          children: [_buildInstructionList(exercise.instructions)],
        ),
        const SizedBox(height: 32),
        _buildActionButtons(exercise),
      ],
    );
  }

  // --- THAY ĐỔI QUAN TRỌNG NHẤT LÀ Ở ĐÂY ---
  Widget _buildMediaSection(Exercise exercise) {
    final fullUrl = _getFullUrl(exercise.gifUrl); // <-- Luôn lấy URL đầy đủ
    print("fullUrl : $fullUrl");
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        height: 250,
        color: Colors.grey[200],
        child:
            _isUrlVideo(fullUrl) && _videoController != null
                ? FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done &&
                        _videoController!.value.isInitialized) {
                      return AspectRatio(
                        aspectRatio: _videoController!.value.aspectRatio,
                        child: VideoPlayer(_videoController!),
                      );
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                )
                : Image.network(
                  // Image.network cũng sẽ nhận URL đầy đủ
                  fullUrl,
                  fit: BoxFit.cover,
                  errorBuilder:
                      (context, error, stackTrace) =>
                          const Icon(Icons.error, color: Colors.red, size: 50),
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return Center(
                      child: CircularProgressIndicator(
                        value:
                            loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                      ),
                    );
                  },
                ),
      ),
    );
  }

  // ... (Các hàm build khác không đổi)
  Widget _buildInfoCard({
    required String title,
    required IconData icon,
    required List<Widget> children,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 12),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Colors.grey.shade200),
          ),
          child: Column(children: children),
        ),
      ],
    );
  }

  Widget _buildDetailRow(String label, String value, {bool isLast = false}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        border:
            isLast
                ? null
                : Border(bottom: BorderSide(color: Colors.grey.shade200)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChipList(String label, List<String> items) {
    if (items.isEmpty || (items.length == 1 && items[0].isEmpty)) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.poppins(
              color: Colors.grey[600],
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: items.map((item) => Chip(label: Text(item))).toList(),
          ),
        ],
      ),
    );
  }

  Widget _buildInstructionList(List<String> instructions) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: Column(
        children:
            instructions.asMap().entries.map((entry) {
              int idx = entry.key;
              String text = entry.value;
              return ListTile(
                leading: CircleAvatar(
                  radius: 16,
                  child: Text(
                    '${idx + 1}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                title: Text(text, style: GoogleFonts.poppins()),
              );
            }).toList(),
      ),
    );
  }

  Widget _buildActionButtons(Exercise exercise) {
    final bool canEditOrDelete =
        exercise.createdBy ==
        widget.coachId;
    if (!canEditOrDelete) return const SizedBox.shrink();

    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () {
              Navigator.push<Exercise>(
                context,
                MaterialPageRoute(
                  builder:
                      (_) => MultiBlocProvider(
                        providers: [
                          BlocProvider.value(
                            value: BlocProvider.of<ExerciseBloc>(context),
                          ),
                          BlocProvider(
                            create:
                                (context) => ImageBloc(
                                  imageRepository: ImageRepository(),
                                ),
                          ),
                        ],
                        child: ExerciseEditScreen(exercise: exercise),
                      ),
                ),
              ).then((updatedExercise) {
                if (updatedExercise != null) {
                  setState(() {
                    _currentExercise = updatedExercise;
                    _setupMedia(_currentExercise.gifUrl);
                  });
                }
              });
            },
            icon: const Icon(Icons.edit_outlined),
            label: const Text('Sửa'),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
              textStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
            // ... (style)
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: ElevatedButton.icon(
            onPressed: _showDeleteConfirmationDialog,
            icon: const Icon(Icons.delete_outline),
            label: const Text('Xóa'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[400],
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 14),
              textStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        // ... (nút Xóa)
      ],
    );
  }
}
