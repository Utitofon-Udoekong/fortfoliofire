import 'package:bloc/bloc.dart';
import 'package:fortfolio/domain/auth/i_firestore_facade.dart';
import 'package:fortfolio/domain/user/notification_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nanoid/nanoid.dart';
import 'package:injectable/injectable.dart';

part 'notification_state.dart';
part 'notification_cubit.freezed.dart';

@injectable
class NotificationCubit extends Cubit<NotificationState> {
  final IFirestoreFacade firestoreFacade;
  NotificationCubit(this.firestoreFacade) : super(NotificationState.empty());

  void initNotifications() async{
    emit(state.copyWith(loading: true));
    final notifications = await firestoreFacade.getNotifications();
    notifications.fold(() => null, (notificationList) {
      emit(state.copyWith(notifications: notificationList, loading: false));
    });
  }

  void selectNotification({required NotificationItem notificationItem}){
    final selectedNotifications = state.selectedNotifications;
    selectedNotifications.add(notificationItem);
    emit(state.copyWith(selectedNotifications: selectedNotifications));
  }

  void deSelectNotification({required NotificationItem notificationItem}){
    final selectedNotifications = state.selectedNotifications;
    final item = selectedNotifications.firstWhere((element) => element.id == notificationItem.id);
    selectedNotifications.remove(item);
    emit(state.copyWith(selectedNotifications: selectedNotifications));
  }

  void deleteNotification({required NotificationItem notificationItem}) async{
    // await firestoreFacade.deleteNotification(notificationItem: notificationItem);
    final notifications = state.notifications;
    final item = notifications.firstWhere((element) => element.id == notificationItem.id);
    notifications.remove(item);
    emit(state.copyWith(notifications: notifications));
  }

  void deleteAllNotifications() async{
    // await firestoreFacade.deleteAllNotifications();
    final notifications = state.notifications;
    final selectedNotifications = state.selectedNotifications;
    notifications.clear();
    selectedNotifications.clear();
    emit(state.copyWith(notifications: notifications, selectedNotifications: selectedNotifications));
  }
  
}
