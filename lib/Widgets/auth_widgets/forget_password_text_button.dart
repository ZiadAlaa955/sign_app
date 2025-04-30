import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tawasel/helper/app_router.dart';
import 'package:tawasel/helper/constants.dart';

class ForgetPasswordTextButton extends StatelessWidget {
  const ForgetPasswordTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(AppRouter.kPasswordRecoveryView);
          },
          child: Text(
            "هل نسيت كلمة المرور؟",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
