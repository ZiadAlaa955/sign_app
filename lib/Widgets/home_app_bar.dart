import 'package:flutter/material.dart';
import 'package:tawasel/widgets/profile_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'مرحبا بك،',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const ProfileIcon(),
          ],
        ),
        const Text(
          'Ziad Alaa',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
  // const SizedBox(width: 12),
            // Card(
            //   color: Colors.grey[300],
            //   elevation: 2,
            //   child: Padding(
            //     padding: const EdgeInsets.all(7),
            //     child: Row(
            //       children: [
            //         const Text(
            //           'تواصل',
            //           style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            //         ),
            //         const SizedBox(width: 5),
            //         Image.network(
            //           height: 35,
            //           'https://cdn-icons-png.flaticon.com/128/4384/4384350.png',
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Text(
            //   'مرحباً "$userName" ',
            //   style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 25),
            // ),