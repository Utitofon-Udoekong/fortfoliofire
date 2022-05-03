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
                BlocBuilder<NotificationCubit, NotificationState>(
                  buildWhen: (previous, current) => previous.notifications != current.notifications,
                  builder: (context, state) {
                    if(state.notifications.isEmpty){
                      return Text("No notifications at the moment", style: subTitle.copyWith(color: kBlackColor, fontSize: 15),);
                    }else{
                      return Column(
                      children: state.notifications.map((notification) {
                        return buildtile(
                          selected: state.selectedNotifications
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
                    );
                    }
                  },
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

  Widget buildtile({
    required String type,
    required String title,
    required String status,
    required DateTime createdat,
    required bool selected,
    required Function() selectNotification,
    required Function() deSelectNotification,
    required Function() deleteNotification,
  }) {
    return GestureDetector(
      onLongPress: selectNotification,
      onTap: selected ? deSelectNotification : null,
      child: Container(
              margin: const EdgeInsets.only(bottom: 10.0),
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 6.0),
        decoration: BoxDecoration(
          color: selected ? const Color(0XFFF4FBFF) : kWhiteColor,
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
                      fontSize: 12.5,
                      fontWeight: FontWeight.w500,
                      color: kBlackColor),
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
                  child: ListTile(
                    title:
                        Text('Delete', style: titleText.copyWith(fontSize: 13)),
                  ),
                  onTap: deleteNotification,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
