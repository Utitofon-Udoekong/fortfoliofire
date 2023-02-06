import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/application/auth/auth_cubit.dart';
import 'package:fortfolio/domain/constants/theme.dart';
import 'package:fortfolio/domain/widgets/custom_filled_button.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/payment_method/cubit/payment_method_cubit.dart';

class PaymentMethodSuccess extends StatelessWidget {
  const PaymentMethodSuccess({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firstName = context
        .select((AuthCubit element) => element.state.userModel.firstName);
    final lastName =
        context.select((AuthCubit element) => element.state.userModel.lastName);
    
    return Scaffold(
      body: SafeArea(
      child: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            Center(
              child: Image.asset(
                "images/success.png",
                width: MediaQuery.of(context).size.width * 0.35,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
                "Address had been added to $firstName $lastName successfully! ",
                style: titleText.copyWith(fontSize: 18),
                textAlign: TextAlign.center),
            const SizedBox(
              height: 30,
            ),
            CustomFilledButton(
                text: 'DONE',
                onTap: () {
                  context.router.popUntilRouteWithName("PaymentMethodRoute");
                })
          ],
        ),
      ),
    ),
    );
  }
}
