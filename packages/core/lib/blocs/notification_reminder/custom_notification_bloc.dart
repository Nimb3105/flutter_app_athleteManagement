import 'package:core/models/notification_reminder/custom_notification.dart';
import 'package:core/repositories/notification_reminder/custom_notification_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_notification_bloc.freezed.dart';

@freezed
sealed class CustomNotificationEvent with _$CustomNotificationEvent {
  const factory CustomNotificationEvent.createNotification(
    CustomNotification notification,
  ) = CreateNotification;
  const factory CustomNotificationEvent.getNotificationById(String id) =
      GetNotificationById;
  const factory CustomNotificationEvent.getNotificationsByUserId(
    String userId,
  ) = GetNotificationsByUserId;
  const factory CustomNotificationEvent.updateNotification(
    String id,
    CustomNotification notification,
  ) = UpdateNotification;
  const factory CustomNotificationEvent.deleteNotification(String id) =
      DeleteNotification;
  const factory CustomNotificationEvent.markNotificationsAsRead(String userId) =
      MarkNotificationsAsRead;
  const factory CustomNotificationEvent.getAllCustomNotifications({
    @Default(1) int page,
    @Default(10) int limit,
  }) = GetAllCustomNotifications;
}

@freezed
sealed class CustomNotificationState with _$CustomNotificationState {
  const factory CustomNotificationState.initial() = Notification_Initial;
  const factory CustomNotificationState.loading() = Notification_Loading;
  const factory CustomNotificationState.loadedNotification(
    CustomNotification notification,
  ) = LoadedNotification;
  const factory CustomNotificationState.loadedNotifications(
    List<CustomNotification> notifications,
  ) = LoadedNotifications;
  const factory CustomNotificationState.success(String message) =
      Notification_Success;
  const factory CustomNotificationState.error(String message) =
      Notification_Error;
  const factory CustomNotificationState.loadedCustomNotifications(
    List<CustomNotification> customNotifications,
    int curentPage,
    int limit,
    bool hasMore,
  ) = LoadedCustomNotification;
}

class CustomNotificationBloc
    extends Bloc<CustomNotificationEvent, CustomNotificationState> {
  final CustomNotificationRepository notificationRepository;

  CustomNotificationBloc({required this.notificationRepository})
    : super(const CustomNotificationState.initial()) {
    on<CreateNotification>(_onCreateNotification);
    on<GetNotificationById>(_onGetNotificationById);
    on<GetNotificationsByUserId>(_onGetNotificationsByUserId);
    on<UpdateNotification>(_onUpdateNotification);
    on<DeleteNotification>(_onDeleteNotification);
    on<MarkNotificationsAsRead>(_onMarkNotificationsAsRead);
    on<GetAllCustomNotifications>(_onGetAllCustomNotifications);
  }

  Future<void> _onGetAllCustomNotifications(
    GetAllCustomNotifications event,
    Emitter<CustomNotificationState> emit,
  ) async {
    emit(const CustomNotificationState.loading());
    try {
      final result = await notificationRepository.getAllNotification(
        page: event.page,
        limit: event.limit,
      );
      emit(
        CustomNotificationState.loadedCustomNotifications(
          result['notifications'] as List<CustomNotification>,
          event.page,
          event.limit,
          result['hasMore'] as bool,
        ),
      );
    } catch (e) {
      emit(CustomNotificationState.error(e.toString()));
    }
  }

  Future<void> _onCreateNotification(
    CreateNotification event,
    Emitter<CustomNotificationState> emit,
  ) async {
    debugPrint('Xử lý CreateNotification');
    emit(const CustomNotificationState.loading());
    try {
      final createdNotification = await notificationRepository
          .createNotification(event.notification);
      emit(CustomNotificationState.loadedNotification(createdNotification));
    } catch (e) {
      debugPrint('Lỗi tạo thông báo: $e');
      emit(CustomNotificationState.error(e.toString()));
    }
  }

  Future<void> _onGetNotificationById(
    GetNotificationById event,
    Emitter<CustomNotificationState> emit,
  ) async {
    debugPrint('Xử lý GetNotificationById: ${event.id}');
    emit(const CustomNotificationState.loading());
    try {
      final notification = await notificationRepository.getNotificationById(
        event.id,
      );
      emit(CustomNotificationState.loadedNotification(notification));
    } catch (e) {
      debugPrint('Lỗi lấy thông báo: $e');
      emit(CustomNotificationState.error(e.toString()));
    }
  }

  Future<void> _onGetNotificationsByUserId(
    GetNotificationsByUserId event,
    Emitter<CustomNotificationState> emit,
  ) async {
    debugPrint('Xử lý GetNotificationsByUserId: ${event.userId}');
    emit(const CustomNotificationState.loading());
    try {
      final notifications = await notificationRepository
          .getNotificationsByUserId(event.userId);
      debugPrint('Lấy được ${notifications.length} thông báo');
      emit(CustomNotificationState.loadedNotifications(notifications));
    } catch (e) {
      debugPrint('Lỗi lấy thông báo: $e');
      emit(CustomNotificationState.error(e.toString()));
    }
  }

  Future<void> _onUpdateNotification(
    UpdateNotification event,
    Emitter<CustomNotificationState> emit,
  ) async {
    debugPrint('Xử lý UpdateNotification: ${event.id}');
    emit(const CustomNotificationState.loading());
    try {
      final updatedNotification = await notificationRepository
          .updateNotification(event.id, event.notification);
      emit(CustomNotificationState.loadedNotification(updatedNotification));
    } catch (e) {
      debugPrint('Lỗi cập nhật thông báo: $e');
      emit(CustomNotificationState.error(e.toString()));
    }
  }

  Future<void> _onDeleteNotification(
    DeleteNotification event,
    Emitter<CustomNotificationState> emit,
  ) async {
    debugPrint('Xử lý DeleteNotification: ${event.id}');
    emit(const CustomNotificationState.loading());
    try {
      await notificationRepository.deleteNotification(event.id);
      emit(const CustomNotificationState.success('Thông báo đã được xóa'));
    } catch (e) {
      debugPrint('Lỗi xóa thông báo: $e');
      emit(CustomNotificationState.error(e.toString()));
    }
  }

  Future<void> _onMarkNotificationsAsRead(
    MarkNotificationsAsRead event,
    Emitter<CustomNotificationState> emit,
  ) async {
    debugPrint('Xử lý MarkNotificationsAsRead cho userId: ${event.userId}');
    emit(const CustomNotificationState.loading());
    try {
      List<CustomNotification> notifications;
      final currentState = state;
      debugPrint('Trạng thái hiện tại: ${currentState.runtimeType}');
      if (currentState is LoadedNotifications) {
        notifications = currentState.notifications;
      } else {
        debugPrint(
          'Lấy danh sách thông báo vì trạng thái không phải LoadedNotifications',
        );
        notifications = await notificationRepository.getNotificationsByUserId(
          event.userId,
        );
      }

      final unreadNotifications =
          notifications.where((n) => n.status == 'Unread').toList();
      debugPrint('Tìm thấy ${unreadNotifications.length} thông báo Unread');

      if (unreadNotifications.isEmpty) {
        debugPrint('Không có thông báo Unread, emit LoadedNotifications');
        emit(CustomNotificationState.loadedNotifications(notifications));
        return;
      }

      for (var notification in unreadNotifications) {
        if (notification.id == null) {
          debugPrint('Bỏ qua thông báo không có ID: ${notification.content}');
          continue;
        }
        try {
          final updatedNotification = notification.copyWith(
            status: 'read',
            updatedAt: DateTime.now(),
          );
          debugPrint('Cập nhật thông báo ID: ${notification.id} thành read');
          await notificationRepository.updateNotification(
            notification.id!,
            updatedNotification,
          );
        } catch (e) {
          debugPrint('Lỗi khi cập nhật thông báo ID: ${notification.id}: $e');
        }
      }

      debugPrint('Lấy lại danh sách thông báo sau khi cập nhật');
      final updatedNotifications = await notificationRepository
          .getNotificationsByUserId(event.userId);
      emit(CustomNotificationState.loadedNotifications(updatedNotifications));
    } catch (e) {
      debugPrint('Lỗi tổng thể khi cập nhật trạng thái thông báo: $e');
      emit(
        CustomNotificationState.error(
          'Lỗi khi cập nhật trạng thái thông báo: $e',
        ),
      );
    }
  }
}
