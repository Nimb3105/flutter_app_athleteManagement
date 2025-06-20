// import 'dart:io';
// import 'dart:math';
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/material.dart';
// import 'package:core/core.dart';
// import 'package:path/path.dart' as path;
// import 'package:video_player/video_player.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';

// class ExerciseCreateScreen extends StatefulWidget {
//   const ExerciseCreateScreen({super.key});

//   @override
//   State<ExerciseCreateScreen> createState() => _ExerciseCreateScreenState();
// }

// class _ExerciseCreateScreenState extends State<ExerciseCreateScreen> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController targetController = TextEditingController();
//   final TextEditingController descriptionController = TextEditingController();
//   final TextEditingController equipmentController = TextEditingController();
//   final TextEditingController muscleController = TextEditingController();

//   String? selectedBodyPart;
//   String? selectedEquipment;
//   File? selectedFile;
//   String? uploadedFilePath;
//   VideoPlayerController? _videoPlayerController;
//   Future<void>? _initializeVideoPlayerFuture;

//   final List<String> bodyParts = ['lưng', 'chân', 'vai', 'ngực', 'tay', 'bụng'];
//   final List<String> equipments = ['trọng lượng cơ thể', 'dụng cụ'];

//   final ImageRepository imageRepository = ImageRepository();

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   void dispose() {
//     nameController.dispose();
//     targetController.dispose();
//     descriptionController.dispose();
//     equipmentController.dispose();
//     muscleController.dispose();
//     _videoPlayerController?.pause();
//     _videoPlayerController?.dispose();
//     super.dispose();
//   }

//   Future<void> _pickFile(BuildContext context) async {
//     // Kiểm tra kết nối mạng
//     final connectivityResult = await Connectivity().checkConnectivity();
//     if (connectivityResult == ConnectivityResult.none) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('Không có kết nối mạng, vui lòng kiểm tra lại'),
//           backgroundColor: Colors.red,
//         ),
//       );
//       return;
//     }

//     FilePickerResult? result = await FilePicker.platform.pickFiles(
//       type: FileType.custom,
//       allowedExtensions: ['jpg', 'jpeg', 'png', 'mp4', 'mov', 'avi', 'webm'],
//     );

//     if (result != null && result.files.single.path != null) {
//       final newFile = File(result.files.single.path!);
//       setState(() {
//         selectedFile = newFile;
//         uploadedFilePath = null;
//         _videoPlayerController?.dispose();
//         _videoPlayerController = null;
//         _initializeVideoPlayerFuture = null;
//       });
//       final imageBloc = context.read<ImageBloc>();
//       if (imageBloc.state is! Image_Loading) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Bắt đầu tải tệp lên...'),
//             backgroundColor: Colors.blue,
//             duration: Duration(seconds: 2),
//           ),
//         );
//         imageBloc.add(UploadImage(selectedFile!));
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           const SnackBar(
//             content: Text('Đang tải tệp, vui lòng đợi...'),
//             backgroundColor: Colors.orange,
//           ),
//         );
//       }
//     }
//   }

//   Future<void> _deleteUploadedImage() async {
//     if (uploadedFilePath != null) {
//       try {
//         final imageBloc = context.read<ImageBloc>();
//         imageBloc.add(DeleteImage(uploadedFilePath!));
//       } catch (e) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Lỗi khi xóa tệp: $e'),
//             backgroundColor: Colors.red,
//           ),
//         );
//       }
//     }
//   }

//   void _initializeVideoPlayer(String videoUrl) {
//     _videoPlayerController?.dispose();
//     _videoPlayerController = VideoPlayerController.networkUrl(
//       Uri.parse(videoUrl),
//     );
//     _initializeVideoPlayerFuture = _videoPlayerController!
//         .initialize()
//         .then((_) {
//           setState(() {});
//           _videoPlayerController!.setLooping(true);
//         })
//         .catchError((error) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(
//               content: Text('Lỗi tải video: $error'),
//               backgroundColor: Colors.red,
//             ),
//           );
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => ImageBloc(imageRepository: imageRepository),
//       child: Scaffold(
//         body: Container(
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [Colors.blue.shade100, Colors.white],
//             ),
//           ),
//           child: SafeArea(
//             child: SingleChildScrollView(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 24.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     const SizedBox(height: 24),
//                     // Header
//                     Container(
//                       height: 80,
//                       width: 80,
//                       decoration: const BoxDecoration(
//                         shape: BoxShape.circle,
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black12,
//                             blurRadius: 10,
//                             offset: Offset(0, 5),
//                           ),
//                         ],
//                       ),
//                       child: const Center(
//                         child: Icon(
//                           Icons.fitness_center,
//                           size: 40,
//                           color: Colors.blue,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     Text(
//                       'Tạo Bài Tập Mới',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 28,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.blue.shade800,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       'Điền thông tin để thêm bài tập mới',
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                         fontSize: 16,
//                         color: Colors.grey.shade700,
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     // File Picker
//                     Builder(
//                       builder:
//                           (innerContext) => GestureDetector(
//                             onTap: () => _pickFile(innerContext),
//                             child: Container(
//                               padding: const EdgeInsets.all(16),
//                               decoration: BoxDecoration(
//                                 border: Border.all(color: Colors.grey),
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: Row(
//                                 children: [
//                                   const Icon(
//                                     Icons.upload_file,
//                                     color: Colors.blue,
//                                   ),
//                                   const SizedBox(width: 8),
//                                   Expanded(
//                                     child: Text(
//                                       selectedFile == null
//                                           ? 'Chọn hình ảnh hoặc video'
//                                           : path.basename(selectedFile!.path),
//                                       style: TextStyle(
//                                         color:
//                                             selectedFile == null
//                                                 ? Colors.grey
//                                                 : Colors.black,
//                                       ),
//                                     ),
//                                   ),
//                                   if (selectedFile != null)
//                                     IconButton(
//                                       onPressed: _deleteUploadedImage,
//                                       icon: const Icon(
//                                         Icons.clear,
//                                         color: Colors.red,
//                                       ),
//                                     ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                     ),
//                     const SizedBox(height: 8),
//                     // Media Preview
//                     BlocBuilder<ImageBloc, ImageState>(
//                       builder: (context, imageState) {
//                         if (imageState is Image_Loading) {
//                           return const Center(
//                             child: CircularProgressIndicator(),
//                           );
//                         }
//                         if (uploadedFilePath != null) {
//                           if (uploadedFilePath!.endsWith('.mp4') ||
//                               uploadedFilePath!.endsWith('.mov') ||
//                               uploadedFilePath!.endsWith('.avi') ||
//                               uploadedFilePath!.endsWith('.webm')) {
//                             return _videoPlayerController != null &&
//                                     _initializeVideoPlayerFuture != null
//                                 ? FutureBuilder(
//                                   future: _initializeVideoPlayerFuture,
//                                   builder: (context, snapshot) {
//                                     if (snapshot.connectionState ==
//                                         ConnectionState.done) {
//                                       return Column(
//                                         children: [
//                                           AspectRatio(
//                                             aspectRatio:
//                                                 _videoPlayerController!
//                                                     .value
//                                                     .aspectRatio,
//                                             child: VideoPlayer(
//                                               _videoPlayerController!,
//                                             ),
//                                           ),
//                                           const SizedBox(height: 8),
//                                           Row(
//                                             mainAxisAlignment:
//                                                 MainAxisAlignment.center,
//                                             children: [
//                                               IconButton(
//                                                 icon: Icon(
//                                                   _videoPlayerController!
//                                                           .value
//                                                           .isPlaying
//                                                       ? Icons.pause
//                                                       : Icons.play_arrow,
//                                                   color: Colors.blue,
//                                                 ),
//                                                 onPressed: () {
//                                                   setState(() {
//                                                     if (_videoPlayerController!
//                                                         .value
//                                                         .isPlaying) {
//                                                       _videoPlayerController!
//                                                           .pause();
//                                                     } else {
//                                                       _videoPlayerController!
//                                                           .play();
//                                                     }
//                                                   });
//                                                 },
//                                               ),
//                                             ],
//                                           ),
//                                         ],
//                                       );
//                                     } else if (snapshot.hasError) {
//                                       return Column(
//                                         children: [
//                                           Text(
//                                             'Lỗi tải video: ${snapshot.error}',
//                                           ),
//                                           ElevatedButton(
//                                             onPressed:
//                                                 () => _initializeVideoPlayer(
//                                                   uploadedFilePath!,
//                                                 ),
//                                             child: const Text('Thử lại'),
//                                           ),
//                                         ],
//                                       );
//                                     } else {
//                                       return const Center(
//                                         child: CircularProgressIndicator(),
//                                       );
//                                     }
//                                   },
//                                 )
//                                 : const Text(
//                                   'Đang khởi tạo video...',
//                                   style: TextStyle(color: Colors.grey),
//                                 );
//                           } else if (uploadedFilePath!.endsWith('.jpg') ||
//                               uploadedFilePath!.endsWith('.jpeg') ||
//                               uploadedFilePath!.endsWith('.png')) {
//                             return Image.network(
//                               uploadedFilePath!,
//                               height: 200,
//                               fit: BoxFit.cover,
//                               errorBuilder:
//                                   (context, error, stackTrace) => const Text(
//                                     'Lỗi tải hình ảnh',
//                                     style: TextStyle(color: Colors.red),
//                                   ),
//                             );
//                           } else {
//                             return Text(
//                               'Đã tải lên: $uploadedFilePath',
//                               style: const TextStyle(color: Colors.green),
//                             );
//                           }
//                         }
//                         return const SizedBox.shrink();
//                       },
//                     ),
//                     const SizedBox(height: 32),
//                     // Form Fields
//                     TextField(
//                       controller: nameController,
//                       decoration: const InputDecoration(
//                         labelText: 'Tên',
//                         prefixIcon: Icon(Icons.fitness_center),
//                         hintText: 'Nhập tên bài tập',
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     DropdownButtonFormField<String>(
//                       value: selectedBodyPart,
//                       decoration: const InputDecoration(
//                         labelText: 'Nhóm cơ',
//                         prefixIcon: Icon(Icons.category),
//                       ),
//                       hint: const Text('Chọn nhóm cơ'),
//                       items:
//                           bodyParts.map((type) {
//                             return DropdownMenuItem(
//                               value: type,
//                               child: Text(type),
//                             );
//                           }).toList(),
//                       onChanged: (value) {
//                         setState(() {
//                           selectedBodyPart = value;
//                         });
//                       },
//                     ),
//                     const SizedBox(height: 16),
//                     DropdownButtonFormField<String>(
//                       value: selectedEquipment,
//                       decoration: const InputDecoration(
//                         labelText: 'Thiết bị',
//                         prefixIcon: Icon(Icons.whatshot),
//                       ),
//                       hint: const Text('Chọn thiết bị'),
//                       items:
//                           equipments.map((equipment) {
//                             return DropdownMenuItem(
//                               value: equipment,
//                               child: Text(equipment),
//                             );
//                           }).toList(),
//                       onChanged: (value) {
//                         setState(() {
//                           selectedEquipment = value;
//                         });
//                       },
//                     ),
//                     const SizedBox(height: 16),
//                     TextField(
//                       controller: targetController,
//                       decoration: const InputDecoration(
//                         labelText: 'Tác động',
//                         prefixIcon: Icon(Icons.center_focus_strong),
//                         hintText: 'Nhập tác động',
//                       ),
//                       keyboardType: TextInputType.number,
//                     ),
//                     const SizedBox(height: 16),
//                     TextField(
//                       controller: descriptionController,
//                       decoration: const InputDecoration(
//                         labelText: 'Mô tả',
//                         prefixIcon: Icon(Icons.description),
//                         hintText: 'Nhập mô tả',
//                       ),
//                       maxLines: 3,
//                     ),
//                     const SizedBox(height: 16),
//                     TextField(
//                       controller: equipmentController,
//                       decoration: const InputDecoration(
//                         labelText: 'Thiết bị',
//                         prefixIcon: Icon(Icons.fitness_center),
//                         hintText: 'Nhập thiết bị cần dùng',
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                     TextField(
//                       controller: muscleController,
//                       decoration: const InputDecoration(
//                         labelText: 'Nhóm cơ',
//                         prefixIcon: Icon(Icons.accessibility),
//                         hintText: 'Nhập nhóm cơ được tập',
//                       ),
//                     ),
//                     const SizedBox(height: 24),
//                     // Action Buttons
//                     BlocConsumer<ImageBloc, ImageState>(
//                       listener: (context, imageState) {
//                         if (imageState is Image_Success) {
//                           setState(() {
//                             uploadedFilePath = imageState.fileUrl;
//                             if (imageState.fileUrl.isNotEmpty) {
//                               if (imageState.fileUrl.endsWith('.mp4') ||
//                                   imageState.fileUrl.endsWith('.mov') ||
//                                   imageState.fileUrl.endsWith('.avi') ||
//                                   imageState.fileUrl.endsWith('.webm')) {
//                                 _initializeVideoPlayer(imageState.fileUrl);
//                               }
//                             }
//                           });
//                           if (imageState.fileUrl.isNotEmpty) {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text('Tải file thành công!'),
//                                 backgroundColor: Colors.green,
//                               ),
//                             );
//                           } else {
//                             ScaffoldMessenger.of(context).showSnackBar(
//                               const SnackBar(
//                                 content: Text('Đã xóa tệp thành công'),
//                                 backgroundColor: Colors.green,
//                               ),
//                             );
//                             setState(() {
//                               selectedFile = null;
//                               uploadedFilePath = null;
//                               _videoPlayerController?.dispose();
//                               _videoPlayerController = null;
//                               _initializeVideoPlayerFuture = null;
//                             });
//                           }
//                         } else if (imageState is Image_Error) {
//                           setState(() {
//                             selectedFile = null;
//                             uploadedFilePath = null;
//                             _videoPlayerController?.dispose();
//                             _videoPlayerController = null;
//                             _initializeVideoPlayerFuture = null;
//                           });
//                           ScaffoldMessenger.of(context).showSnackBar(
//                             SnackBar(
//                               content: Text(
//                                 'Lỗi tải tệp: ${imageState.message}',
//                               ),
//                               backgroundColor: Colors.red,
//                             ),
//                           );
//                         }
//                       },
//                       builder: (context, imageState) {
//                         return BlocConsumer<ExerciseBloc, ExerciseState>(
//                           listener: (context, exerciseState) {
//                             if (exerciseState is LoadedExercise) {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 const SnackBar(
//                                   content: Text('Tạo bài tập thành công!'),
//                                   backgroundColor: Colors.green,
//                                 ),
//                               );
//                               context.read<ExerciseBloc>().add(
//                                 const GetAllExercises(),
//                               );
//                               Navigator.pop(context);
//                             } else if (exerciseState is Exercise_Error) {
//                               ScaffoldMessenger.of(context).showSnackBar(
//                                 SnackBar(
//                                   content: Text(exerciseState.message),
//                                   backgroundColor: Colors.red,
//                                 ),
//                               );
//                             }
//                           },
//                           builder: (context, exerciseState) {
//                             return Row(
//                               children: [
//                                 Expanded(
//                                   child: ElevatedButton(
//                                     onPressed:
//                                         (exerciseState is Exercise_Loading ||
//                                                 imageState is Image_Loading)
//                                             ? null
//                                             : () {
//                                               if (nameController.text.isEmpty ||
//                                                   selectedBodyPart == null ||
//                                                   selectedEquipment == null ||
//                                                   targetController
//                                                       .text
//                                                       .isEmpty ||
//                                                   descriptionController
//                                                       .text
//                                                       .isEmpty ||
//                                                   equipmentController
//                                                       .text
//                                                       .isEmpty ||
//                                                   muscleController
//                                                       .text
//                                                       .isEmpty) {
//                                                 ScaffoldMessenger.of(
//                                                   context,
//                                                 ).showSnackBar(
//                                                   const SnackBar(
//                                                     content: Text(
//                                                       'Vui lòng điền đầy đủ các trường bắt buộc',
//                                                     ),
//                                                     backgroundColor:
//                                                         Colors.orange,
//                                                   ),
//                                                 );
//                                                 return;
//                                               }

//                                               final exercise = Exercise(
//                                                 id: null,
//                                                 name:
//                                                     nameController.text.trim(),
//                                                 bodyPart: selectedBodyPart!,
//                                                 equipment: selectedEquipment!,
//                                                 target:targetController.text.trim(),
//                                                 description:
//                                                     descriptionController.text
//                                                         .trim(),
//                                                 equipment:
//                                                     equipmentController.text
//                                                         .trim(),
//                                                 muscle:
//                                                     muscleController.text
//                                                         .trim(),
//                                                 gifUrl: uploadedFilePath ?? '',
//                                                 createdAt: null,
//                                                 updatedAt: null,
//                                               );

//                                               context.read<ExerciseBloc>().add(
//                                                 CreateExercise(exercise),
//                                               );
//                                             },
//                                     style: ElevatedButton.styleFrom(
//                                       backgroundColor: Colors.blue,
//                                       foregroundColor: Colors.white,
//                                       elevation: 3,
//                                       minimumSize: const Size(
//                                         double.infinity,
//                                         50,
//                                       ),
//                                     ),
//                                     child:
//                                         (exerciseState is Exercise_Loading ||
//                                                 imageState is Image_Loading)
//                                             ? const Row(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.center,
//                                               children: [
//                                                 SizedBox(
//                                                   height: 20,
//                                                   width: 20,
//                                                   child:
//                                                       CircularProgressIndicator(
//                                                         color: Colors.white,
//                                                         strokeWidth: 2,
//                                                       ),
//                                                 ),
//                                                 SizedBox(width: 16),
//                                                 Text('Đang xử lý...'),
//                                               ],
//                                             )
//                                             : const Text(
//                                               'TẠO BÀI TẬP',
//                                               style: TextStyle(
//                                                 fontSize: 16,
//                                                 fontWeight: FontWeight.bold,
//                                               ),
//                                             ),
//                                   ),
//                                 ),
//                                 const SizedBox(width: 16),
//                                 Expanded(
//                                   child: ElevatedButton(
//                                     onPressed:
//                                         (exerciseState is Exercise_Loading ||
//                                                 imageState is Image_Loading)
//                                             ? null
//                                             : () async {
//                                               await _deleteUploadedImage();
//                                               Navigator.pop(context);
//                                             },
//                                     style: ElevatedButton.styleFrom(
//                                       backgroundColor: Colors.grey.shade400,
//                                       foregroundColor: Colors.black87,
//                                       elevation: 3,
//                                       minimumSize: const Size(
//                                         double.infinity,
//                                         50,
//                                       ),
//                                     ),
//                                     child: const Text(
//                                       'HỦY',
//                                       style: TextStyle(
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             );
//                           },
//                         );
//                       },
//                     ),
//                     const SizedBox(height: 24),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:core/core.dart';

class ExerciseCreateScreen extends StatelessWidget {
  const ExerciseCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              SportBloc(sportRepository: context.read<SportRepository>())
                ..add(const GetAllSports()), // Trigger GetAllSports immediately
      child: const _ExerciseCreateScreenContent(),
    );
  }
}

class _ExerciseCreateScreenContent extends StatelessWidget {
  const _ExerciseCreateScreenContent();

  @override
  Widget build(BuildContext context) {
    // Initialize controllers
    final formKey = GlobalKey<FormState>();
    final nameController = TextEditingController();
    final targetController = TextEditingController();
    final secondaryMusclesController = TextEditingController();
    final instructionsController = TextEditingController();
    final gifUrlController = TextEditingController();

    // Use ValueNotifier for dropdown selections
    final selectedBodyPart = ValueNotifier<String?>(null);
    final selectedEquipment = ValueNotifier<String?>(null);
    final selectedSport = ValueNotifier<String?>(null);

    // Define static lists
    const List<String> bodyParts = [
      'lưng',
      'vai',
      'tay',
      'chân',
      'ngực',
      'bụng',
    ];
    const List<String> equipments = ['dụng cụ', 'trọng lượng cơ thể'];

    void createExercise() {
      if (formKey.currentState!.validate()) {
        final exercise = Exercise(
          id: null,
          name: nameController.text,
          bodyPart: selectedBodyPart.value!,
          equipment: selectedEquipment.value!,
          target: targetController.text,
          secondaryMuscles:
              secondaryMusclesController.text
                  .split(',')
                  .map((e) => e.trim())
                  .toList(),
          instructions:
              instructionsController.text
                  .split('\n')
                  .map((e) => e.trim())
                  .toList(),
          gifUrl: gifUrlController.text,
          sportName: selectedSport.value!,
          createdAt: null,
          updatedAt: null,
        );

        context.read<ExerciseBloc>().add(CreateExercise(exercise));
      }
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Tạo bài tập mới')),
      body: BlocListener<ExerciseBloc, ExerciseState>(
        listener: (context, state) {
          //print(state);
          if (state is Exercise_Loading) {
          } else if (state is LoadedExercise) {
            Navigator.pop(context);
          } else if (state is Exercise_Error) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text('Lỗi: ${state.message}')));
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(labelText: 'Tên bài tập'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Vui lòng nhập tên bài tập';
                      }
                      return null;
                    },
                  ),

                  SizedBox(height: 16),

                  ValueListenableBuilder<String?>(
                    valueListenable: selectedBodyPart,
                    builder: (context, value, child) {
                      return DropdownButtonFormField<String>(
                        value: value,
                        decoration: const InputDecoration(labelText: 'Nhóm cơ'),
                        items:
                            bodyParts
                                .map(
                                  (bodyPart) => DropdownMenuItem(
                                    value: bodyPart,
                                    child: Text(bodyPart),
                                  ),
                                )
                                .toList(),
                        onChanged: (newValue) {
                          selectedBodyPart.value = newValue;
                        },
                        validator: (value) {
                          if (value == null) {
                            return 'Vui lòng chọn nhóm cơ';
                          }
                          return null;
                        },
                      );
                    },
                  ),
                  SizedBox(height: 16),
                  ValueListenableBuilder<String?>(
                    valueListenable: selectedEquipment,
                    builder: (context, value, child) {
                      return DropdownButtonFormField<String>(
                        value: value,
                        decoration: const InputDecoration(
                          labelText: 'Thiết bị',
                        ),
                        items:
                            equipments
                                .map(
                                  (equipment) => DropdownMenuItem(
                                    value: equipment,
                                    child: Text(equipment),
                                  ),
                                )
                                .toList(),
                        onChanged: (newValue) {
                          selectedEquipment.value = newValue;
                        },
                        validator: (value) {
                          if (value == null) {
                            return 'Vui lòng chọn thiết bị';
                          }
                          return null;
                        },
                      );
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: targetController,
                    decoration: const InputDecoration(labelText: 'Cơ mục tiêu'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Vui lòng nhập cơ mục tiêu';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: secondaryMusclesController,
                    decoration: const InputDecoration(
                      labelText: 'Cơ phụ (phân cách bởi dấu phẩy)',
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Vui lòng nhập ít nhất một cơ phụ';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: instructionsController,
                    decoration: const InputDecoration(
                      labelText: 'Hướng dẫn (mỗi dòng một bước)',
                    ),
                    maxLines: 5,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Vui lòng nhập hướng dẫn';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: gifUrlController,
                    decoration: const InputDecoration(labelText: 'URL GIF'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Vui lòng nhập URL GIF';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  BlocBuilder<SportBloc, SportState>(
                    builder: (context, state) {
                      if (state is LoadedSports) {
                        return ValueListenableBuilder<String?>(
                          valueListenable: selectedSport,
                          builder: (context, value, child) {
                            return DropdownButtonFormField<String>(
                              value: value,
                              decoration: const InputDecoration(
                                labelText: 'Bộ môn',
                              ),
                              items:
                                  state.sports
                                      .map(
                                        (sport) => DropdownMenuItem(
                                          value: sport.name,
                                          child: Text(sport.name),
                                        ),
                                      )
                                      .toList(),
                              onChanged: (newValue) {
                                selectedSport.value = newValue;
                              },
                              validator: (value) {
                                if (value == null) {
                                  return 'Vui lòng chọn bộ môn';
                                }
                                return null;
                              },
                            );
                          },
                        );
                      } else if (state is Sport_Loading) {
                        return const CircularProgressIndicator();
                      } else if (state is Sport_Error) {
                        return Text('Lỗi: ${state.message}');
                      }
                      return const Text('Không có bộ môn nào');
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: createExercise,
                    child: const Text('Tạo bài tập'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
