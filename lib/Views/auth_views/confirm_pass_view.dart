import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tawasel/widgets/auth_widgets/confirm_pass.dart';

class confirm_pass_view extends StatelessWidget {
  const confirm_pass_view({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
        child: confirm_pass(),
      ),
    );
  }
}
