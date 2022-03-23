import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/domain/widgets/custom_outlined_button.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

final List<ItemModel> _data = generateItems(8);

class _NotificationsPageState extends State<NotificationsPage> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
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
              omo(),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Visibility(
                    visible: _selected,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomOutlinedButton(
                            text: 'MARK ALL AS READ', onTap: () {}),
                        CustomFilledButton(text: 'CLEAR ALL', onTap: () {})
                      ],
                    )),
              )
            ],
          )),
    )));
  }

  omo() {
    return _data.map((item) {
      
      GestureDetector(
        child: buildtile(item.selected),
        onLongPress: () {
          item.selected = true;
          var haselection =
              _data.any((ItemModel element) => element.selected == true);
          if (haselection) {
            _selected = true;
          } else {
            return;
          }
        },
        onTap: () {
          if (item.selected) {
            item.selected = false;
          } else {
            print('tapped');
          }
        },
      );
    });
  }

  Widget buildtile(selected) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: selected ? const Color(0XFFF4FBFF) : const Color(0XFFF3F6F8)))),
      child: Row(
        children: <Widget>[
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  color: const Color(0XFFF2FFF9),
                  borderRadius: BorderRadius.circular(10.0)),
              child: const Icon(
                Icons.north_east,
                color: kGreenColor,
              )),
          const SizedBox(
            width: 8,
          ),
          Flex(
            direction: Axis.vertical,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('New investment. 2h ago',
                  style: subTitle.copyWith(
                      fontSize: 12, color: const Color(0XFF757575))),
              Text(
                'Real Estate investment successful',
                style: titleText.copyWith(
                    fontSize: 14,
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
                  title: Text('Delete', style: titleText.copyWith(fontSize: 13)),
                ),
                onTap: (){},
              )
            ],
          )
        ],
      ),
    );
  }
}

List<ItemModel> generateItems(int numberOfItems) {
  return List<ItemModel>.generate(numberOfItems, (int index) {
    return ItemModel();
  });
}

class ItemModel {
  bool selected;
  ItemModel({this.selected = false});
}
