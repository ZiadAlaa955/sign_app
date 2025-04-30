import 'package:flutter/material.dart';
import 'package:tawasel/widgets/auth_widgets/Password%20recovery.dart';

class PasswordRecoveryView extends StatelessWidget {
  const PasswordRecoveryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: PasswordRecovery(),
    );
  }
}
