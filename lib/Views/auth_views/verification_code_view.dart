import 'package:flutter/material.dart';
import 'package:tawasel/widgets/auth_widgets/verification_code.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: VerificationCode(),
    );
    ;
  }
}
