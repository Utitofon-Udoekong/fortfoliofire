import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/internet/cubit/internet_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';

class NoInternetPage extends StatelessWidget {
  const NoInternetPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset("images/disconnected.svg"),
            const SizedBox(height: 40,),
            Text("Oops!", style: titleText,),
            const SizedBox(height: 20,),
            Text("No internet connection found. Please check your connection and try again.", style: subTitle.copyWith(fontSize: 18, fontWeight: FontWeight.w400),),
            const SizedBox(height: 40,),
            CustomFilledButton(text: "Try Again", onTap: () => context.read<InternetCubit>().checkConnection())
          ],
        ),
      ),
    ));
  }
}