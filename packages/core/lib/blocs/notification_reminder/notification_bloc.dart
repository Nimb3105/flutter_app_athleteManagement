// notification_bloc.dart

import 'package:core/models/notification_reminder/notification.dart';
import 'package:core/repositories/notification_reminder/notification_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_bloc.freezed.dart';

@freezed
sealed class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.createNotification(
    Notification notification,
  ) = CreateNotification;
  const factory NotificationEvent.getNotificationById(String id) =
      GetNotificationById;
  const factory NotificationEvent.getNotificationsByUserId(String userId) =
      GetNotificationsByUserId;
  const factory NotificationEvent.updateNotification(
    String id,
    Notification notification,
  ) = UpdateNotification;
  const factory NotificationEvent.deleteNotification(String id) =
      DeleteNotification;
  const factory NotificationEvent.markNotificationsAsRead(String userId) =
      MarkNotificationsAsRead;
}

@freezed
sealed class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = Notification_Initial;
  const factory NotificationState.loading() = Notification_Loading;
  const factory NotificationState.loadedNotification(
    Notification notification,
  ) = LoadedNotification;
  const factory NotificationState.loadedNotifications(
    List<Notification> notifications,
  ) = LoadedNotifications;
  const factory NotificationState.success(String message) =
      Notification_Success;
  const factory NotificationState.error(String message) = Notification_Error;
}

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationRepository notificationRepository;

  NotificationBloc({required this.notificationRepository})
    : super(const NotificationState.initial()) {
    on<CreateNotification>(_onCreateNotification);
    on<GetNotificationById>(_onGetNotificationById);
    on<GetNotificationsByUserId>(_onGetNotificationsByUserId);
    on<UpdateNotification>(_onUpdateNotification);
    on<DeleteNotification>(_onDeleteNotification);
    on<MarkNotificationsAsRead>(_onMarkNotificationsAsRead);
  }

  Future<void> _onCreateNotification(
    CreateNotification event,
    Emitter<NotificationState> emit,
  ) async {
    debugPrint('Xử lý CreateNotification');
    emit(const NotificationState.loading());
    try {
      final createdNotification = await notificationRepository
          .createNotification(event.notification);
      emit(NotificationState.loadedNotification(createdNotification));
    } catch (e) {
      debugPrint('Lỗi tạo thông báo: $e');
      emit(NotificationState.error(e.toString()));
    }
  }

  Future<void> _onGetNotificationById(
    GetNotificationById event,
    Emitter<NotificationState> emit,
  ) async {
    debugPrint('Xử lý GetNotificationById: ${event.id}');
    emit(const NotificationState.loading());
    try {
      final notification = await notificationRepository.getNotificationById(
        event.id,
      );
      emit(NotificationState.loadedNotification(notification));
    } catch (e) {
      debugPrint('Lỗi lấy thông báo: $e');
      emit(NotificationState.error(e.toString()));
    }
  }

  Future<void> _onGetNotificationsByUserId(
    GetNotificationsByUserId event,
    Emitter<NotificationState> emit,
  ) async {
    debugPrint('Xử lý GetNotificationsByUserId: ${event.userId}');
    emit(const NotificationState.loading());
    try {
      final notifications = await notificationRepository
          .getNotificationsByUserId(event.userId);
      debugPrint('Lấy được ${notifications.length} thông báo');
      emit(NotificationState.loadedNotifications(notifications));
    } catch (e) {
      debugPrint('Lỗi lấy thông báo: $e');
      emit(NotificationState.error(e.toString()));
    }
  }

  Future<void> _onUpdateNotification(
    UpdateNotification event,
    Emitter<NotificationState> emit,
  ) async {
    debugPrint('Xử lý UpdateNotification: ${event.id}');
    emit(const NotificationState.loading());
    try {
      final updatedNotification = await notificationRepository
          .updateNotification(event.id, event.notification);
      emit(NotificationState.loadedNotification(updatedNotification));
    } catch (e) {
      debugPrint('Lỗi cập nhật thông báo: $e');
      emit(NotificationState.error(e.toString()));
    }
  }

  Future<void> _onDeleteNotification(
    DeleteNotification event,
    Emitter<NotificationState> emit,
  ) async {
    debugPrint('Xử lý DeleteNotification: ${event.id}');
    emit(const NotificationState.loading());
    try {
      await notificationRepository.deleteNotification(event.id);
      emit(const NotificationState.success('Thông báo đã được xóa'));
    } catch (e) {
      debugPrint('Lỗi xóa thông báo: $e');
      emit(NotificationState.error(e.toString()));
    }
  }

  Future<void> _onMarkNotificationsAsRead(
    MarkNotificationsAsRead event,
    Emitter<NotificationState> emit,
  ) async {
    debugPrint('Xử lý MarkNotificationsAsRead cho userId: ${event.userId}');
    emit(const NotificationState.loading());
    try {
      List<Notification> notifications;
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
        emit(NotificationState.loadedNotifications(notifications));
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
      emit(NotificationState.loadedNotifications(updatedNotifications));
    } catch (e) {
      debugPrint('Lỗi tổng thể khi cập nhật trạng thái thông báo: $e');
      emit(
        NotificationState.error('Lỗi khi cập nhật trạng thái thông báo: $e'),
      );
    }
  }
}
