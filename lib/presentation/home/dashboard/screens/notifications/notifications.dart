import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/notifications/cubit/notification_cubit.dart';
import 'package:jiffy/jiffy.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final notifications = context.select((NotificationCubit bloc) => bloc.state.notifications);
    final selectedNotifications = context.select((NotificationCubit bloc) => bloc.state.selectedNotifications);
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () => context.router.pop(),
                  child: const Icon(Icons.close),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Notifications",
                  style: titleText.copyWith(color: kBlackColor),
                ),
                const SizedBox(
                  height: 20,
                ),
                notifications.isEmpty ? Text("No notifications at the moment", style: subTitle.copyWith(color: kBlackColor, fontSize: 15),) : Column(
                      children: notifications.map((notification) {
                        return BuildTile(
                          selected: selectedNotifications
                              .contains(notification),
                          selectNotification: () => context
                              .read<NotificationCubit>()
                              .selectNotification(
                                  notificationItem: notification),
                          deSelectNotification: () => context
                              .read<NotificationCubit>()
                              .deSelectNotification(
                                  notificationItem: notification),
                          deleteNotification: () => context
                              .read<NotificationCubit>()
                              .deleteNotification(
                                  notificationItem: notification),
                          title: notification.title,
                          type: notification.type,
                          createdat: notification.createdat,
                          status: notification.status
                        );
                      }).toList(),
                    ),
                const SizedBox(
                  height: 20,
                ),
                BlocSelector<NotificationCubit, NotificationState, bool>(
                  selector: (state) {
                    return state.selectedNotifications.isNotEmpty;
                  },
                  builder: (context, selected) {
                    return Align(
                      alignment: Alignment.bottomCenter,
                      child: Visibility(
                          visible: selected,
                          child: CustomFilledButton(
                              text: 'CLEAR ALL',
                              onTap: () => context
                                  .read<NotificationCubit>()
                                  .deleteAllNotifications())),
                    );
                  },
                )
              ],
            )),
      ),
    ));
  }

}

class BuildTile extends StatelessWidget {
  final String type;
  final String title;
  final String status;
  final DateTime createdat;
  final bool selected;
  final void Function()? selectNotification;
  final void Function()? deSelectNotification;
  final void Function()? deleteNotification;
  const BuildTile({super.key, required this.type, required this.title, required this.status, required this.createdat, required this.selected, required this.selectNotification, required this.deSelectNotification, required this.deleteNotification});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onLongPress: selectNotification,
      onTap: selected ? deSelectNotification : null,
      child: Container(
              margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4.0),
        decoration: BoxDecoration(
          color: selected ? const Color(0xFF59C1FD) : kWhiteColor,
        ),
        child: Row(
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(3.5),
                decoration: BoxDecoration(
                    color: const Color(0XFFF2FFF9),
                    borderRadius: BorderRadius.circular(10.0)),
                child: const Icon(
                  Icons.north_east,
                  color: kGreenColor,
                  size: 13,
                )),
            const SizedBox(
              width: 8,
            ),
            Flex(
              direction: Axis.vertical,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('$type. ${Jiffy(createdat).fromNow()}',
                    style: subTitle.copyWith(
                        fontSize: 12, color: const Color(0XFF757575))),
                Text(
                  '$title $status',
                  style: titleText.copyWith(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: status == "Successful" || status == "Approved"
                              ? const Color(0XFF00C566)
                              : status == "Pending"
                                  ? const Color.fromARGB(239, 226, 167, 4)
                                  : const Color(0XFFDF1414),),
                                  maxLines: 2,
                )
              ],
            ),
            const Spacer(),
            PopupMenuButton(
              icon: const Icon(
                Icons.more_vert_rounded,
                color: Color(0XFF9E9E9E),
              ),
              itemBuilder: (BuildContext context) => [
                PopupMenuItem(
                  onTap: deleteNotification,
                  child: ListTile(
                    title:
                        Text('Delete', style: titleText.copyWith(fontSize: 13)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}