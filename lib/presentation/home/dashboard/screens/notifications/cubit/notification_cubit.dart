import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/notification_item.dart';
import 'package:fortfolio/infrastructure/auth/dto/notification/notification_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'notification_state.dart';
part 'notification_cubit.freezed.dart';

@injectable
class NotificationCubit extends Cubit<NotificationState> {
  final IFirestoreFacade firestoreFacade;
  StreamSubscription<QuerySnapshot>? _logsStreamSubscription;
  NotificationCubit(this.firestoreFacade) : super(NotificationState.empty()){
    initNotifications();
  }

  void initNotifications() {
    _logsStreamSubscription = firestoreFacade.getNotifications().listen((data) {
      final List<QueryDocumentSnapshot<Object?>> docs = data.docs;
      List<NotificationItem> newdocs = [];
      if (data.size > 0) {
        for (var element in docs) {
          final doc = NotificationItemDTO.fromFirestore(element).toDomain();
          newdocs.add(doc);
        }
        emit(state.copyWith(notifications: newdocs, loading: false));
      }
    });
  }

  void selectNotification({required NotificationItem notificationItem}) {
    final selectedNotifications = state.selectedNotifications;
    selectedNotifications.add(notificationItem);
    emit(state.copyWith(selectedNotifications: selectedNotifications));
  }

  void deSelectNotification({required NotificationItem notificationItem}) {
    final selectedNotifications = state.selectedNotifications;
    final item = selectedNotifications
        .firstWhere((element) => element.id == notificationItem.id);
    selectedNotifications.remove(item);
    emit(state.copyWith(selectedNotifications: selectedNotifications));
  }

  void deleteNotification({required NotificationItem notificationItem}) async {
    await firestoreFacade.deleteNotification(
        notificationItem: notificationItem);
    // final notifications = state.notifications;
    // final item = notifications.firstWhere((element) => element.id == notificationItem.id);
    // notifications.remove(item);
    // emit(state.copyWith(notifications: notifications));
  }

  void deleteAllNotifications() async {
    await firestoreFacade.deleteAllNotifications();
    // final notifications = state.notifications;
    final selectedNotifications = state.selectedNotifications;
    // notifications.clear();
    selectedNotifications.clear();
    emit(state.copyWith(selectedNotifications: selectedNotifications));
  }

  @override
  Future<void> close() async {
    await _logsStreamSubscription?.cancel();
    return super.close();
  }
}
