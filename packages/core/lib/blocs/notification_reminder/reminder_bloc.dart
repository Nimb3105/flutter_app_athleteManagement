import 'package:core/models/notification_reminder/reminder.dart';
import 'package:core/repositories/notification_reminder/reminder_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reminder_bloc.freezed.dart';

@freezed
sealed class ReminderEvent with _$ReminderEvent {
  const factory ReminderEvent.createReminder(Reminder reminder) =
      CreateReminder;
  const factory ReminderEvent.getReminderById(String id) = GetReminderById;
  const factory ReminderEvent.getRemindersByUserId(String userId) =
      GetRemindersByUserId;
  const factory ReminderEvent.updateReminder(String id, Reminder reminder) =
      UpdateReminder;
  const factory ReminderEvent.deleteReminder(String id) = DeleteReminder;
  const factory ReminderEvent.getAllReminders({@Default(1) int page, @Default(10) int limit}) = GetAllReminders;
}

@freezed
sealed class ReminderState with _$ReminderState {
  const factory ReminderState.initial() = Reminder_Initial;
  const factory ReminderState.loading() = Reminder_Loading;
  const factory ReminderState.loadedReminder(Reminder reminder) =
      LoadedReminder;
  const factory ReminderState.loadedReminders(List<Reminder> reminders) =
      LoadedReminders;
  const factory ReminderState.success(String message) = Reminder_Success;
  const factory ReminderState.error(String message) = Reminder_Error;
  const factory ReminderState.loadedAllReminders(
    List<Reminder> reminders,
    int currentPage,
    int limit,
    bool hasMore,
  ) = LoadedAllReminders;
}

class ReminderBloc extends Bloc<ReminderEvent, ReminderState> {
  final ReminderRepository reminderRepository;

  ReminderBloc({required this.reminderRepository})
    : super(const ReminderState.initial()) {
    on<CreateReminder>(_onCreateReminder);
    on<GetReminderById>(_onGetReminderById);
    on<GetRemindersByUserId>(_onGetRemindersByUserId);
    on<UpdateReminder>(_onUpdateReminder);
    on<DeleteReminder>(_onDeleteReminder);
     on<GetAllReminders>(_onGetAllReminders);
  }

   Future<void> _onGetAllReminders(GetAllReminders event, Emitter<ReminderState> emit) async {
    emit(const ReminderState.loading());
    try {
      final result = await reminderRepository.getAllReminders(page: event.page, limit: event.limit);
      emit(ReminderState.loadedAllReminders(
        result['reminders'] as List<Reminder>,
        event.page,
        event.limit,
        result['hasMore'] as bool,
      ));
    } catch (e) {
      emit(ReminderState.error(e.toString()));
    }
  }

  Future<void> _onCreateReminder(
    CreateReminder event,
    Emitter<ReminderState> emit,
  ) async {
    emit(const ReminderState.loading());
    try {
      final createdReminder = await reminderRepository.createReminder(
        event.reminder,
      );
      emit(ReminderState.loadedReminder(createdReminder));
    } catch (e) {
      emit(ReminderState.error(e.toString()));
    }
  }

  Future<void> _onGetReminderById(
    GetReminderById event,
    Emitter<ReminderState> emit,
  ) async {
    emit(const ReminderState.loading());
    try {
      final reminder = await reminderRepository.getReminderById(event.id);
      emit(ReminderState.loadedReminder(reminder));
    } catch (e) {
      emit(ReminderState.error(e.toString()));
    }
  }

  Future<void> _onGetRemindersByUserId(
    GetRemindersByUserId event,
    Emitter<ReminderState> emit,
  ) async {
    emit(const ReminderState.loading());
    try {
      final reminders = await reminderRepository.getRemindersByUserId(
        event.userId,
      );
      emit(ReminderState.loadedReminders(reminders));
    } catch (e) {
      emit(ReminderState.error(e.toString()));
    }
  }

  Future<void> _onUpdateReminder(
    UpdateReminder event,
    Emitter<ReminderState> emit,
  ) async {
    emit(const ReminderState.loading());
    try {
      final updatedReminder = await reminderRepository.updateReminder(
        event.id,
        event.reminder,
      );
      emit(ReminderState.loadedReminder(updatedReminder));
    } catch (e) {
      emit(ReminderState.error(e.toString()));
    }
  }

  Future<void> _onDeleteReminder(
    DeleteReminder event,
    Emitter<ReminderState> emit,
  ) async {
    emit(const ReminderState.loading());
    try {
      await reminderRepository.deleteReminder(event.id);
      emit(const ReminderState.success('Reminder deleted successfully'));
    } catch (e) {
      emit(ReminderState.error(e.toString()));
    }
  }
}
