import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ExerciseDetailScreen extends StatefulWidget {
  final Exercise exercise;

  const ExerciseDetailScreen({super.key, required this.exercise});

  @override
  State<ExerciseDetailScreen> createState() => _ExerciseDetailScreenState();
}

class _ExerciseDetailScreenState extends State<ExerciseDetailScreen> {
  VideoPlayerController? _videoPlayerController;
  Future<void>? _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();
    // Khởi tạo trình phát video nếu mediaUrl là video
    if (widget.exercise.gifUrl.isNotEmpty && _isVideo(widget.exercise.gifUrl)) {
      _initializeVideoPlayer(widget.exercise.gifUrl);
    }
  }

  @override
  void dispose() {
    _videoPlayerController?.dispose();
    super.dispose();
  }

  bool _isVideo(String url) {
    // Kiểm tra phần mở rộng của URL để xác định là video
    return url.endsWith('.mp4') || url.endsWith('.mov') || url.endsWith('.avi');
  }

  void _initializeVideoPlayer(String videoUrl) {
    // ignore: deprecated_member_use
    _videoPlayerController = VideoPlayerController.network(videoUrl);
    _initializeVideoPlayerFuture = _videoPlayerController!
        .initialize()
        .then((_) {
          setState(() {});
          _videoPlayerController!.setLooping(true);
        })
        .catchError((error) {
          // ignore: use_build_context_synchronously
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Lỗi tải video: $error'),
              backgroundColor: Colors.red,
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.exercise.name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          overflow: TextOverflow.ellipsis,
        ),
        backgroundColor: Colors.blue.shade700,
        foregroundColor: Colors.white,
        elevation: 2,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue.shade100, Colors.white],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Media Section
                  if (widget.exercise.gifUrl.isNotEmpty)
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child:
                          _isVideo(widget.exercise.gifUrl)
                              ? (_videoPlayerController != null &&
                                      _initializeVideoPlayerFuture != null)
                                  ? FutureBuilder(
                                    future: _initializeVideoPlayerFuture,
                                    builder: (context, snapshot) {
                                      if (snapshot.connectionState ==
                                          ConnectionState.done) {
                                        return Column(
                                          children: [
                                            AspectRatio(
                                              aspectRatio:
                                                  _videoPlayerController!
                                                      .value
                                                      .aspectRatio,
                                              child: VideoPlayer(
                                                _videoPlayerController!,
                                              ),
                                            ),
                                            const SizedBox(height: 8),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                IconButton(
                                                  icon: Icon(
                                                    _videoPlayerController!
                                                            .value
                                                            .isPlaying
                                                        ? Icons.pause
                                                        : Icons.play_arrow,
                                                    color: Colors.blue,
                                                  ),
                                                  onPressed: () {
                                                    setState(() {
                                                      if (_videoPlayerController!
                                                          .value
                                                          .isPlaying) {
                                                        _videoPlayerController!
                                                            .pause();
                                                      } else {
                                                        _videoPlayerController!
                                                            .play();
                                                      }
                                                    });
                                                  },
                                                ),
                                              ],
                                            ),
                                          ],
                                        );
                                      } else {
                                        return Container(
                                          height: 200,
                                          color: Colors.grey.shade200,
                                          child: const Center(
                                            child: CircularProgressIndicator(),
                                          ),
                                        );
                                      }
                                    },
                                  )
                                  : Container(
                                    height: 200,
                                    color: Colors.grey.shade200,
                                    child: const Center(
                                      child: Icon(
                                        Icons.error_outline,
                                        color: Colors.red,
                                        size: 40,
                                      ),
                                    ),
                                  )
                              : Image.network(
                                ApiConstants.baseUrl + widget.exercise.gifUrl,
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,
                                loadingBuilder: (
                                  context,
                                  child,
                                  loadingProgress,
                                ) {
                                  if (loadingProgress == null) return child;
                                  return Container(
                                    height: 200,
                                    color: Colors.grey.shade200,
                                    child: const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                },
                                errorBuilder: (context, error, stackTrace) {
                                  return Container(
                                    height: 200,
                                    color: Colors.grey.shade200,
                                    child: const Center(
                                      child: Icon(
                                        Icons.error_outline,
                                        color: Colors.red,
                                        size: 40,
                                      ),
                                    ),
                                  );
                                },
                              ),
                    )
                  else
                    Container(
                      height: 200,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: const Center(
                        child: Text(
                          'No media available',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                      ),
                    ),
                  const SizedBox(height: 24),

                  // Exercise Details
                  Text(
                    'Exercise Details',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade900,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Detail Card
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildDetailRow('BodyPart', widget.exercise.bodyPart),
                          _buildDetailRow(
                            'Equipment',
                            widget.exercise.equipment,
                          ),
                          _buildDetailRow('Target', widget.exercise.target),

                          if (widget.exercise.secondaryMuscles.isNotEmpty) ...[
                            const SizedBox(height: 8),
                            Text(
                              'Secondary Muscles',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade900,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Wrap(
                              spacing: 8.0,
                              runSpacing: 4.0,
                              children:
                                  widget.exercise.secondaryMuscles
                                      .map(
                                        (muscle) => Chip(label: Text(muscle)),
                                      )
                                      .toList(),
                            ),
                          ],

                          if (widget.exercise.instructions.isNotEmpty) ...[
                            const SizedBox(height: 8),
                            Text(
                              'Instructions',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.blue.shade900,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Wrap(
                              spacing: 8.0,
                              runSpacing: 4.0,
                              children:
                                  widget.exercise.instructions
                                      .map(
                                        (instructions) => Chip(label: Text(instructions)),
                                      )
                                      .toList(),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Action Buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          // Navigate to edit screen (to be implemented)
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Edit functionality coming soon!'),
                            ),
                          );
                        },
                        icon: const Icon(Icons.edit),
                        label: const Text('Edit'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade700,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          context.read<ExerciseBloc>().add(
                            DeleteExercise(widget.exercise.id!),
                          );
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.delete),
                        label: const Text('Delete'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red.shade700,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.blue.shade900,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 14, color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
