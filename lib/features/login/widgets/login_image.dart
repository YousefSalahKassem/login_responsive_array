import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_responsive/core/constants.dart';

class LoginImage extends StatelessWidget {
  const LoginImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Login',style: TextStyle(fontWeight: FontWeight.bold),),
        const SizedBox(height: defaultPadding,),
        Row(
          children: [
            const Spacer(),
            Expanded(flex: 8,child: SvgPicture.asset('assets/icons/login.svg'),),
            const Spacer(),
          ],
        ),
        const SizedBox(height: defaultPadding * 2,),
      ],
    );
  }
}
