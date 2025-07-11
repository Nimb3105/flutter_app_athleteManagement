// lib/screens/app/coach/exercises/exercise_detail.dart

import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class ExerciseDetailScreen extends StatefulWidget {
  final Exercise exercise;
  const ExerciseDetailScreen({super.key, required this.exercise});

  @override
  State<ExerciseDetailScreen> createState() => _ExerciseDetailScreenState();
}

class _ExerciseDetailScreenState extends State<ExerciseDetailScreen> {
  VideoPlayerController? _videoController;
  Future<void>? _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    // Chỉ khởi tạo video nếu URL hợp lệ và là video
    if (_isUrlVideo(widget.exercise.gifUrl)) {
      _initializeVideoPlayer(widget.exercise.gifUrl);
    }
  }

  bool _isUrlVideo(String url) {
    // Kiểm tra kỹ hơn để đảm bảo là URL hợp lệ
    final uri = Uri.tryParse(url);
    return uri != null && uri.isAbsolute && uri.path.endsWith('.mp4');
  }

  void _initializeVideoPlayer(String videoUrl) {
    // ignore: deprecated_member_use
    _videoController = VideoPlayerController.network(videoUrl);
    _initializeVideoPlayerFuture = _videoController?.initialize().then((_) {
      if (!mounted) return; // Kiểm tra widget còn tồn tại không
      _videoController?.setLooping(true);
      _videoController?.play();
      setState(() {});
    });
  }

  @override
  void dispose() {
    _videoController?.dispose();
    super.dispose();
  }

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
    // Lắng nghe trạng thái từ ExerciseBloc
    return BlocListener<ExerciseBloc, ExerciseState>(
      listener: (context, state) {
        // Nếu xóa thành công, quay lại màn hình trước đó
        if (state is Exercise_Success && state.message.contains('deleted')) {
          Navigator.pop(context);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.exercise.name,
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 24),
          children: [
            _buildMediaSection(),
            const SizedBox(height: 32),
            _buildInfoCard(
              title: 'Thông tin cơ bản',
              icon: Icons.info_outline,
              children: [
                _buildDetailRow('Nhóm cơ', widget.exercise.bodyPart),
                _buildDetailRow('Cơ mục tiêu', widget.exercise.target),
                _buildDetailRow('Dụng cụ', widget.exercise.equipment),
                _buildDetailRow(
                  'Đơn vị',
                  widget.exercise.unitType,
                  isLast: true,
                ),
              ],
            ),
            const SizedBox(height: 24),
            _buildInfoCard(
              title: 'Cơ bắp tác động',
              icon: Icons.accessibility_new,
              children: [
                _buildChipList('Cơ phụ', widget.exercise.secondaryMuscles),
              ],
            ),
            const SizedBox(height: 24),
            _buildInfoCard(
              title: 'Hướng dẫn thực hiện',
              icon: Icons.integration_instructions_outlined,
              children: [_buildInstructionList(widget.exercise.instructions)],
            ),
            const SizedBox(height: 32),
            _buildActionButtons(),
          ],
        ),
      ),
    );
  }

  Widget _buildMediaSection() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        height: 250,
        color: Colors.grey[200],
        child:
            _isUrlVideo(widget.exercise.gifUrl)
                ? FutureBuilder(
                  future: _initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return AspectRatio(
                        aspectRatio: _videoController!.value.aspectRatio,
                        child: VideoPlayer(_videoController!),
                      );
                    }
                    return const Center(child: CircularProgressIndicator());
                  },
                )
                : Image.network(
                  widget.exercise.gifUrl,
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

  Widget _buildActionButtons() {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton.icon(
            onPressed: () {
            },
            icon: const Icon(Icons.edit_outlined),
            label: const Text('Sửa'),
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
              textStyle: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            ),
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
      ],
    );
  }
}
