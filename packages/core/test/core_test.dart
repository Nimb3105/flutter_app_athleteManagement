// import 'package:flutter/foundation.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:core/core.dart';
// import 'package:core/repositories/bass_repository.dart';

// void main() {
//   const baseUrl = ApiConstants.baseUrl;

//   // Danh sách tất cả 31 model
//   final modelNames = [
//     'Achievement',
//     'Athlete',
//     'CoachCertification',
//     'Coach',
//     'CoachAthlete',
//     'Exercise',
//     'Feedback',
//     'Food',
//     'Group',
//     'GroupMember',
//     'Health',
//     'Injury',
//     'MatchSchedule',
//     'MedicalHistory',
//     'Message',
//     'Notification',
//     'NutritionPlan',
//     'Performance',
//     'PlanFood',
//     'Progress',
//     'Reminder',
//     'SportUser',
//     'Sport',
//     'Team',
//     'TeamMember',
//     'Tournament',
//     'TrainingExercise',
//     'TrainingSchedule',
//     'TrainingScheduleUser',
//     'User',
//     'UserMatch',
//   ];

//   // Ánh xạ tên model sang lớp model
//   final modelTypeMap = {
//     'Achievement': Achievement,
//     'Athlete': Athlete,
//     'CoachCertification': CoachCertification,
//     'Coach': Coach,
//     'CoachAthlete': CoachAthlete,
//     'Exercise': Exercise,
//     'Feedback': Feedback,
//     'Food': Food,
//     'Group': Group,
//     'GroupMember': GroupMember,
//     'Health': Health,
//     'Injury': Injury,
//     'MatchSchedule': MatchSchedule,
//     'MedicalHistory': MedicalHistory,
//     'Message': Message,
//     'Notification': CustomNotification,
//     'NutritionPlan': NutritionPlan,
//     'Performance': Performance,
//     'PlanFood': PlanFood,
//     'Progress': Progress,
//     'Reminder': Reminder,
//     'SportUser': SportUser,
//     'Sport': Sport,
//     'Team': Team,
//     'TeamMember': TeamMember,
//     'Tournament': Tournament,
//     'TrainingExercise': TrainingExercise,
//     'TrainingSchedule': TrainingSchedule,
//     'TrainingScheduleUser': TrainingScheduleUser,
//     'User': User,
//     'UserMatch': UserMatch,
//   };

//   // Ánh xạ endpoint đặc biệt (nếu khác với <modelName>s)
//   final endpointMap = {
//     'MatchSchedule': 'match-schedules',
//     'MedicalHistory': 'medical-historys',
//     'NutritionPlan': 'nutrition-plans',
//     'TrainingExercise': 'training-exercises',
//     'TrainingSchedule': 'training-schedules',
//     'TrainingScheduleUser': 'training-schedule-users',
//     'CoachCertification': 'coach-certifications',
//     'CoachAthlete': 'coach-athletes',
//     'SportUser': 'sport-users',
//     'TeamMember': 'team-members',
//     'UserMatch': 'user-matchs',
//     'nutritionPlan': 'nutrition-plans',
//     'PlanFood': 'plan-foods',
//     'GroupMember': 'group-members',
//     'Progress': 'progresses',
//     'Health': 'health-records',
//   };

//   group('API Tests - getAll for All Models', () {
//     for (var modelName in modelNames) {
//       test('Lấy danh sách $modelName', () async {
//         final modelType = modelTypeMap[modelName];
//         if (modelType == null) {
//           fail('Model $modelName chưa được định nghĩa trong modelTypeMap');
//         }

//         // Tạo endpoint
//         final endpoint =
//             endpointMap[modelName] ?? '${modelName.toLowerCase()}s';

//         // Tạo repository với fromJson/toJson
//         final repo = BaseRepository(
//           baseUrl: baseUrl,
//           endpoint: endpoint,
//           fromJson: (json) => _invokeFromJson(modelType, json),
//           toJson: (obj) => _invokeToJson(modelType, obj),
//         );

//         try {
//           final results = await repo.getAll();
//           expect(
//             results,
//             isNotEmpty,
//             reason: 'Danh sách $modelName không được rỗng',
//           );
//           if (kDebugMode) {
//             print(
//             '$modelName: Thành công ✅ — Lấy được ${results.length} phần tử.',
//           );
//           }
//           if (results.isNotEmpty) {
//             if (kDebugMode) {
//               print(
//               'Dữ liệu mẫu: ${results.take(2).map((e) => (e as dynamic).toJson()).toList()}',
//             );
//             }
//           }
//         } catch (e) {
//           fail('Lỗi khi gọi getAll cho $modelName: $e');
//         }
//       });
//     }
//   });
// }

// // Gọi fromJson của model
// dynamic _invokeFromJson(Type modelType, Map<String, dynamic> json) {
//   if (modelType == Achievement) return Achievement.fromJson(json);
//   if (modelType == Athlete) return Athlete.fromJson(json);
//   if (modelType == CoachCertification) return CoachCertification.fromJson(json);
//   if (modelType == Coach) return Coach.fromJson(json);
//   if (modelType == CoachAthlete) return CoachAthlete.fromJson(json);
//   if (modelType == Exercise) return Exercise.fromJson(json);
//   if (modelType == Feedback) return Feedback.fromJson(json);
//   if (modelType == Food) return Food.fromJson(json);
//   if (modelType == Group) return Group.fromJson(json);
//   if (modelType == GroupMember) return GroupMember.fromJson(json);
//   if (modelType == Health) return Health.fromJson(json);
//   if (modelType == Injury) return Injury.fromJson(json);
//   if (modelType == MatchSchedule) return MatchSchedule.fromJson(json);
//   if (modelType == MedicalHistory) return MedicalHistory.fromJson(json);
//   if (modelType == Message) return Message.fromJson(json);
//   if (modelType == CustomNotification) return CustomNotification.fromJson(json);
//   if (modelType == NutritionPlan) return NutritionPlan.fromJson(json);
//   if (modelType == Performance) return Performance.fromJson(json);
//   if (modelType == PlanFood) return PlanFood.fromJson(json);
//   if (modelType == Progress) return Progress.fromJson(json);
//   if (modelType == Reminder) return Reminder.fromJson(json);
//   if (modelType == SportUser) return SportUser.fromJson(json);
//   if (modelType == Sport) return Sport.fromJson(json);
//   if (modelType == Team) return Team.fromJson(json);
//   if (modelType == TeamMember) return TeamMember.fromJson(json);
//   if (modelType == Tournament) return Tournament.fromJson(json);
//   if (modelType == TrainingExercise) return TrainingExercise.fromJson(json);
//   if (modelType == TrainingSchedule) return TrainingSchedule.fromJson(json);
//   if (modelType == TrainingScheduleUser) {
//     return TrainingScheduleUser.fromJson(json);
//   }
//   if (modelType == User) return User.fromJson(json);
//   if (modelType == UserMatch) return UserMatch.fromJson(json);
//   throw Exception(
//     'Model $modelType chưa được định nghĩa trong _invokeFromJson',
//   );
// }

// // Gọi toJson của model
// Map<String, dynamic> _invokeToJson(Type modelType, dynamic obj) {
//   if (modelType == Achievement) return (obj as Achievement).toJson();
//   if (modelType == Athlete) return (obj as Athlete).toJson();
//   if (modelType == CoachCertification) {
//     return (obj as CoachCertification).toJson();
//   }
//   if (modelType == Coach) return (obj as Coach).toJson();
//   if (modelType == CoachAthlete) return (obj as CoachAthlete).toJson();
//   if (modelType == Exercise) return (obj as Exercise).toJson();
//   if (modelType == Feedback) return (obj as Feedback).toJson();
//   if (modelType == Food) return (obj as Food).toJson();
//   if (modelType == Group) return (obj as Group).toJson();
//   if (modelType == GroupMember) return (obj as GroupMember).toJson();
//   if (modelType == Health) return (obj as Health).toJson();
//   if (modelType == Injury) return (obj as Injury).toJson();
//   if (modelType == MatchSchedule) return (obj as MatchSchedule).toJson();
//   if (modelType == MedicalHistory) return (obj as MedicalHistory).toJson();
//   if (modelType == Message) return (obj as Message).toJson();
//   if (modelType == CustomNotification) return (obj as CustomNotification).toJson();
//   if (modelType == NutritionPlan) return (obj as NutritionPlan).toJson();
//   if (modelType == Performance) return (obj as Performance).toJson();
//   if (modelType == PlanFood) return (obj as PlanFood).toJson();
//   if (modelType == Progress) return (obj as Progress).toJson();
//   if (modelType == Reminder) return (obj as Reminder).toJson();
//   if (modelType == SportUser) return (obj as SportUser).toJson();
//   if (modelType == Sport) return (obj as Sport).toJson();
//   if (modelType == Team) return (obj as Team).toJson();
//   if (modelType == TeamMember) return (obj as TeamMember).toJson();
//   if (modelType == Tournament) return (obj as Tournament).toJson();
//   if (modelType == TrainingExercise) return (obj as TrainingExercise).toJson();
//   if (modelType == TrainingSchedule) return (obj as TrainingSchedule).toJson();
//   if (modelType == TrainingScheduleUser) {
//     return (obj as TrainingScheduleUser).toJson();
//   }
//   if (modelType == User) return (obj as User).toJson();
//   if (modelType == UserMatch) return (obj as UserMatch).toJson();
//   throw Exception('Model $modelType chưa được định nghĩa trong _invokeToJson');
// }
