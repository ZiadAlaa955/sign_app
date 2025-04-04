import 'package:flutter/material.dart';
import 'package:tawasel/widgets/content_app_bar.dart';

import '../widgets/sign_content.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});
  final List<Map<String, String>> numberItems = [
    {'mediaPath': 'assets/images/logo.png', 'text': "1"},
    {'mediaPath': 'assets/images/logo.png', 'text': "2"},
    {'mediaPath': 'assets/images/logo.png', 'text': "3"},
    {'mediaPath': 'assets/images/logo.png', 'text': "4"},
    {'mediaPath': 'assets/images/logo.png', 'text': "4"},
    {'mediaPath': 'assets/images/logo.png', 'text': "4"},
    {'mediaPath': 'assets/images/logo.png', 'text': "4"},
    {'mediaPath': 'assets/images/logo.png', 'text': "4"},
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: const ContentAppBar(text: "الأرقام"),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 8, right: 16, left: 16, bottom: 8),
          child: SignContent(itemsCount: 2, items: numberItems),
        ),
      ),
    );
  }
}
