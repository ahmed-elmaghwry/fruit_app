import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/get_it_service.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../domain/repos/auth_repo.dart';
import '../cubits/signin_cubit/signin_cubit.dart';
import 'widgets/signin_view_body_bloc_consumer.dart';

class SigninView extends StatelessWidget {
  const SigninView({super.key});

  static const routeName = 'login';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninCubit(
        getIt.get<AuthRepo>(),
      ),
      child: Scaffold(
        appBar: CustomAppBar(context, title: 'تسجيل دخول'),
        body: const SigninViewBodyBlocConsumer(),
      ),
    );
  }
}
