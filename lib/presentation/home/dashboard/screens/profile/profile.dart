import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/profile/cubit/profile_cubit.dart';
import 'package:fortfolio/utils/pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => getIt<ProfileCubit>(),
          child: Padding(
            padding: kDefaultPadding,
            child: BlocBuilder<ProfileCubit, ProfileState>(
              builder: (context, state) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () {
                        context.router.pop();
                      },
                      child: const Icon(Icons.close),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Your Profile",
                      style: titleText.copyWith(color: kBlackColor),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0XFFF5F7FA)),
                            child: CircleAvatar(
                              backgroundColor: const Color(0XFFE7E7E7),
                              child: Text(state.displayName,
                                  style: const TextStyle(
                                    fontSize: 25,
                                    color: Color(0XFF242424),
                                  )),
                            ),
                            padding: const EdgeInsets.all(5.0),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          state.isVerified
                              ? Text("Account Verified",
                                  style: subTitle.copyWith(
                                      color: kBlackColor,
                                      fontSize: 13,
                                      decoration: TextDecoration.underline))
                              : TextButton(
                                  onPressed: () =>
                                      context.router.pushNamed(verification),
                                  child: Text('Account unverified',
                                      style: subTitle.copyWith(
                                          color: kBlackColor,
                                          fontSize: 13,
                                          decoration:
                                              TextDecoration.underline)),
                                )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    buildtile(
                        'ID: ${state.id}',
                        const Icon(
                          Icons.file_copy_rounded,
                          color: kPrimaryColor,
                          size: 15,
                        ),
                        true),
                    buildtile(state.email, const Spacer(), false),
                    const SizedBox(
                      height: 10,
                    ),
                    buildtile(
                      "",
                        // appUser.firstName.getOrCrash(),
                        Text(
                          'Henshaw',
                          style: subTitle.copyWith(
                              color: kBlackColor, fontSize: 15),
                        ),
                        true),
                    buildtile(state.phone, const Spacer(), false),
                    const SizedBox(
                      height: 130,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        'Fortfolio 2021',
                        style: subTitle.copyWith(
                            color: const Color(0XFF242424), fontSize: 13),
                      ),
                    ),
                    // Row(
                    //   children: <Widget>[],
                    // )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }

  Widget buildtile(String leading, Widget trailing, bool trailexist) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Color(0XFFF3F6F8)))),
      child: Row(
        children: <Widget>[
          Text(leading,
              style: subTitle.copyWith(color: kBlackColor, fontSize: 15)),
          const Spacer(),
          trailexist ? trailing : const Spacer()
        ],
      ),
    );
  }
}
