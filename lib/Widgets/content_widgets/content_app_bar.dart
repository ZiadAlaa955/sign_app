import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ContentAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String text;

  const ContentAppBar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon:
            const Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black),
        onPressed: () {
          GoRouter.of(context).pop();
        },
      ),
      title: Align(
        alignment: Alignment.centerRight,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

  // Row(
  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //   children: [
  //     Container(
  //       decoration:
  //           BoxDecoration(color: Colors.grey[300], shape: BoxShape.circle),
  //       child: IconButton(
  //         onPressed: () {},
  //         icon: const Icon(Icons.arrow_back_ios_new_outlined),
  //       ),
  //     ),
  //     Text(
  //       text,
  //       style: const TextStyle(
  //         fontFamily: "Poppins",
  //         fontSize: 30,
  //         fontWeight: FontWeight.w600,
  //       ),
  //     ),
  //   ],
  // );

