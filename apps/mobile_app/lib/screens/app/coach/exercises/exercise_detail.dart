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

class _ExerciseDetailScreenState extends State<ExerciseDetailScreen>
    with WidgetsBindingObserver {
  VideoPlayerController? _videoController;
  Future<void>? _initializeVideoPlayerFuture;
  late Exercise
  _currentExercise; // Dùng state cục bộ để cập nhật UI ngay lập tức

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _currentExercise = widget.exercise;
    _setupMedia(_currentExercise.gifUrl);
  }

  // ... (dispose, didChangeAppLifecycleState, và các hàm helper _getFullUrl, _isUrlVideo không đổi)
  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _videoController?.dispose();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (_videoController == null || !_videoController!.value.isInitialized) {
      return;
    }
    if (state == AppLifecycleState.inactive ||
        state == AppLifecycleState.paused) {
      _videoController!.pause();
    } else if (state == AppLifecycleState.resumed) {
      _videoController!.play();
    }
  }

  String _getFullUrl(String path) {
    if (path.startsWith('http')) return path;
    return '${ApiConstants.baseUrl}$path';
  }

  bool _isUrlVideo(String url) {
    final uri = Uri.tryParse(url);
    if (uri == null) return false;
    return [
      '.mp4',
      '.mov',
      '.avi',
    ].any((ext) => uri.path.toLowerCase().endsWith(ext));
  }

  void _setupMedia(String mediaUrl) {
    final fullUrl = _getFullUrl(mediaUrl);
    _videoController?.dispose(); // Dọn dẹp controller cũ

    if (_isUrlVideo(fullUrl)) {
      _videoController = VideoPlayerController.networkUrl(Uri.parse(fullUrl));
      _initializeVideoPlayerFuture = _videoController!.initialize().then((_) {
        if (mounted) {
          _videoController!
            ..setLooping(true)
            ..play();
          setState(() {});
        }
      });
    } else {
      _videoController = null;
      _initializeVideoPlayerFuture = null;
    }
    setState(() {});
  }

  void _showDeleteConfirmationDialog() {
    showDialog(
      context: context,
      builder:
          (dialogContext) => AlertDialog(
            title: const Text('Xác nhận xóa'),
            content: Text(
              'Bạn có chắc chắn muốn xóa bài tập "${_currentExercise.name}" không?',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(),
                child: const Text('Hủy'),
              ),
              TextButton(
                child: const Text('Xóa', style: TextStyle(color: Colors.red)),
                onPressed: () {
                  Navigator.of(dialogContext).pop();
                  context.read<ExerciseBloc>().add(
                    DeleteExercise(_currentExercise.id!),
                  );
                },
              ),
            ],
          ),
    );
  }

  void _showForeignKeyErrorDialog(BuildContext context, String message) {
    final displayMessage = message.replaceFirst('Exception: ', '');

    showDialog(
      context: context,
      builder:
          (dialogContext) => AlertDialog(
            title: Row(
              children: [
                Icon(Icons.warning_amber_rounded, color: Colors.orange[700]),
                const SizedBox(width: 10),
                const Text('Không Thể Xóa'),
              ],
            ),
            content: Text(displayMessage, style: GoogleFonts.poppins()),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(dialogContext).pop();
                  // SAU KHI ĐÓNG DIALOG, GỌI EVENT ĐỂ ĐẶT LẠI TRẠNG THÁI BLOC
                  context.read<ExerciseBloc>().add(
                    const ExerciseEvent.clearError(),
                  );
                },
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ExerciseBloc, ExerciseState>(
      listener: (context, state) {
        // Xử lý khi xóa thành công
        if (state is Exercise_Success && state.message.contains('Xóa bài tập thành công')) {
          // Sử dụng addPostFrameCallback để đảm bảo navigation an toàn
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              // Hiển thị thông báo thành công
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Đã xóa bài tập thành công"),
                  backgroundColor: Colors.green,
                ),
              );
              // Quay về màn hình danh sách và trả về kết quả 'deleted'
              Navigator.of(context).pop('deleted');
            }
          });
        }
        // Xử lý lỗi (bao gồm cả lỗi khóa ngoại)
        else if (state is Exercise_Error) {
          if (state.message.contains('không thể xóa vì còn liên quan')) {
            _showForeignKeyErrorDialog(context, state.message);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Lỗi: ${state.message}"),
                backgroundColor: Colors.red,
              ),
            );
          }
          // Đặt lại trạng thái của BLoC để tránh lỗi lặp lại
          context.read<ExerciseBloc>().add(const ExerciseEvent.clearError());
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

  // ... (Các hàm _build... UI không thay đổi)
  Widget _buildBody(Exercise exercise) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
      children: [
        _buildMediaSection(),
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

  Widget _buildMediaSection() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        height: 250,
        color: Colors.grey[200],
        child:
            _isUrlVideo(_currentExercise.gifUrl) && _videoController != null
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
                    if (snapshot.hasError) {
                      return const Center(
                        child: Icon(
                          Icons.error_outline,
                          color: Colors.red,
                          size: 50,
                        ),
                      );
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                )
                : Image.network(
                  _getFullUrl(_currentExercise.gifUrl),
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
    if (exercise.createdBy != widget.coachId) return const SizedBox.shrink();
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () async {
              _videoController?.pause();
              final updatedExercise = await Navigator.push<Exercise>(
                context,
                MaterialPageRoute(
                  builder:
                      (_) => MultiBlocProvider(
                        providers: [
                          BlocProvider.value(
                            value: context.read<ExerciseBloc>(),
                          ),
                          RepositoryProvider(
                            create: (context) => ImageRepository(),
                          ),
                          BlocProvider(
                            create:
                                (context) => ImageBloc(
                                  imageRepository:
                                      context.read<ImageRepository>(),
                                ),
                          ),
                        ],
                        child: ExerciseEditScreen(exercise: _currentExercise),
                      ),
                ),
              );
              if (updatedExercise != null && mounted) {
                setState(() {
                  if (_currentExercise.gifUrl != updatedExercise.gifUrl) {
                    _setupMedia(updatedExercise.gifUrl);
                  }
                  _currentExercise = updatedExercise;
                });
                // Pop with 'updated' to signal list screen to refresh
                Navigator.pop(context, 'updated');
              } else {
                _videoController?.play();
              }
            },
            icon: const Icon(Icons.edit_outlined),
            label: const Text('Sửa'),
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
            ),
          ),
        ),
      ],
    );
  }
}
