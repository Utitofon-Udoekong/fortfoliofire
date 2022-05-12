import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fortfolio/injection.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/cubit/security_cubit.dart';
import 'package:fortfolio/presentation/home/dashboard/screens/security/set_pin.dart';

class SetPinEngine extends StatelessWidget {
  const SetPinEngine({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SecurityCubit>(),
      child: const SetPin(),
    );
  }
}