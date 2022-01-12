import 'package:flutter/material.dart';
import 'package:fortfolio/constants/theme.dart';
import 'package:fortfolio/screens/home/dashboard/screens/verification/verification.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: kDefaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              InkWell(
                child: const Icon(Icons.close),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Your Profile",
                style: titleText.copyWith(color: kBlackColor),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0XFFF5F7FA)),
                      child: CircleAvatar(
                        backgroundColor: Color(0XFFE7E7E7),
                        child: Text('JB',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color(0XFF242424),
                            )),
                      ),
                      padding: EdgeInsets.all(5.0),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    TextButton(
                      onPressed: () => null,
                      child: Text('Account unverified',
                          style: subTitle.copyWith(
                              color: kBlackColor,
                              fontSize: 13,
                              decoration: TextDecoration.underline)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              buildtile(
                  'ID: 65443339900',
                  Icon(
                    Icons.file_copy_rounded,
                    color: kPrimaryColor,
                    size: 15,
                  ),
                  true),
              buildtile('hellojosy@gmail.com', Spacer(), false),
              SizedBox(
                height: 10,
              ),
              buildtile(
                  'Joy',
                  Text(
                    'Henshaw',
                    style: subTitle.copyWith(color: kBlackColor, fontSize: 15),
                  ),
                  true),
              buildtile('234 86007753334', Spacer(), false),
              SizedBox(
                height: 130,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Fortfolio 2021',
                  style:
                      subTitle.copyWith(color: Color(0XFF242424), fontSize: 13),
                ),
              ),
              // Row(
              //   children: <Widget>[],
              // )
            ],
          ),
        ),
      ),
    );
  }


  Widget buildtile(String leading, Widget trailing, bool trailexist) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0XFFF3F6F8)
          )
        )
      ),
      child: Row(
        children: <Widget>[
          Text(leading,style: subTitle.copyWith(color: kBlackColor, fontSize: 15)),
          Spacer(),
          trailexist ? trailing : Spacer()
        ],
      ),
    );
  }
}
