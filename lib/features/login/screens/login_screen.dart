import 'package:flutter/material.dart';
import 'package:login_responsive/core/components/background.dart';
import 'package:login_responsive/core/responsive.dart';
import 'package:login_responsive/features/login/widgets/login_form.dart';
import 'package:login_responsive/features/login/widgets/login_image.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Background(
        child: SingleChildScrollView(
      child: Responsive(
          mobile: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginImage(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: LoginForm(),
              )
            ],
          ),
          desktop: Row(
            children: [
              Expanded(child: LoginImage()),
              Expanded(child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: LoginForm(),
              )),
            ],
          )),
    ));
  }
}
