// import 'package:flutter/material.dart';
// import 'package:core/core.dart';
// import 'package:google_fonts/google_fonts.dart';

// class ExerciseSelectForTrainingScreen extends StatelessWidget {
//   final String? sportId;

//   const ExerciseSelectForTrainingScreen({required this.sportId, super.key});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create:
//           (context) => ExerciseBloc(
//             exerciseRepository: context.read<ExerciseRepository>(),
//           )..add(GetAllExercisesBySportId(sportId ?? '')),
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(
//             'Chọn Bài Tập',
//             style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
//           ),
//         ),
//         body: BlocBuilder<ExerciseBloc, ExerciseState>(
//           builder: (context, state) {
//             if (state is Exercise_Loading) {
//               return const Center(child: CircularProgressIndicator());
//             } else if (state is LoadedExercisesBySportId) {
//               if (state.exercises.isEmpty) {
//                 return Center(
//                   child: Text(
//                     'Không có bài tập nào cho môn thể thao này.',
//                     style: GoogleFonts.poppins(color: Colors.grey[600]),
//                   ),
//                 );
//               }
//               return ListView.builder(
//                 padding: const EdgeInsets.all(8.0),
//                 itemCount: state.exercises.length,
//                 itemBuilder: (context, index) {
//                   final exercise = state.exercises[index];
//                   return Card(
//                     margin: const EdgeInsets.symmetric(
//                       horizontal: 8,
//                       vertical: 6,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                     child: ListTile(
//                       title: Text(
//                         exercise.name,
//                         style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
//                       ),
//                       subtitle: Text(
//                         'Nhóm cơ: ${exercise.bodyPart}',
//                         style: GoogleFonts.poppins(),
//                       ),
//                       onTap: () => Navigator.pop(context, exercise),
//                     ),
//                   );
//                 },
//               );
//             } else if (state is Exercise_Error) {
//               return Center(child: Text('Lỗi: ${state.message}'));
//             }
//             return const Center(
//               child: Text('Vui lòng chọn một môn thể thao trước.'),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseSelectForTrainingScreen extends StatelessWidget {
  final String? sportId;

  const ExerciseSelectForTrainingScreen({required this.sportId, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) => ExerciseBloc(
            exerciseRepository: context.read<ExerciseRepository>(),
          )..add(GetAllExercisesBySportId(sportId ?? '')),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Chọn Bài Tập',
            style: GoogleFonts.poppins(fontWeight: FontWeight.w600),
          ),
        ),
        body: BlocBuilder<ExerciseBloc, ExerciseState>(
          builder: (context, state) {
            if (state is Exercise_Loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is LoadedExercisesBySportId) {
              if (state.exercises.isEmpty) {
                return Center(
                  child: Text(
                    'Không có bài tập nào cho môn thể thao này.',
                    style: GoogleFonts.poppins(color: Colors.grey[600]),
                  ),
                );
              }
              return ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: state.exercises.length,
                itemBuilder: (context, index) {
                  final exercise = state.exercises[index];
                  return Card(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 6,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      title: Text(
                        exercise.name,
                        style: GoogleFonts.poppins(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        'Nhóm cơ: ${exercise.bodyPart}',
                        style: GoogleFonts.poppins(),
                      ),
                      onTap: () => Navigator.pop(context, exercise),
                    ),
                  );
                },
              );
            } else if (state is Exercise_Error) {
              return Center(child: Text('Lỗi: ${state.message}'));
            }
            return const Center(
              child: Text('Vui lòng chọn một môn thể thao trước.'),
            );
          },
        ),
      ),
    );
  }
}
