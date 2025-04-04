import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tawasel/helper/app_router.dart';
import 'package:tawasel/helper/constants.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.grey[300],
      child: IconButton(
        onPressed: () {
          GoRouter.of(context).push(AppRouter.kProfileView);
        },
        icon: Icon(Icons.person, size: 33, color: kPrimaryColor),
      ),
    );
  }
}
