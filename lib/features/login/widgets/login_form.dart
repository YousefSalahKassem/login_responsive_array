import 'package:flutter/material.dart';
import 'package:login_responsive/core/components/already_have_an_account.dart';
import 'package:login_responsive/core/constants.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
          cursorColor: kPrimaryColor,
          onSaved: (email) {},
          decoration: const InputDecoration(
            hintText: 'Email',
            prefixIcon: Icon(Icons.person),
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        TextFormField(
          textInputAction: TextInputAction.done,
          obscureText: true,
          cursorColor: kPrimaryColor,
          onSaved: (password) {},
          decoration: const InputDecoration(
            hintText: 'Password',
            prefixIcon: Icon(Icons.lock),
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Center(
            child: Text('Login'),
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        AlreadyHaveAnAccountCheck(press: () {})
      ],
    );
  }
}
