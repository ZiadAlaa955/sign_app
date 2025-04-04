import 'package:flutter/material.dart';
import 'package:tawasel/helper/constants.dart';

class ProfileNameContainer extends StatelessWidget {
  const ProfileNameContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: const BorderRadius.vertical(
          bottom: Radius.elliptical(400, 100),
          top: Radius.circular(20),
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Ziad Alaa',
            style: TextStyle(
              color: Colors.white,
              fontSize: 27,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Ziadalaa955@gmail.com',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w100,
            ),
          ),
        ],
      ),
    );
  }
}
