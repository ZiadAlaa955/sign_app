import 'package:flutter/material.dart';
import 'package:tawasel/widgets/content_widgets/content_app_bar.dart';

import '../../widgets/content_widgets/sign_content.dart';

class WordsContentScreen extends StatelessWidget {
  const WordsContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ContentAppBar(text: "الكلمات"),
      body: Padding(
        padding: EdgeInsets.only(top: 0, right: 16, left: 16, bottom: 8),
        child: SignContent(
          itemsCount: 1,
          categoryName: 'word',
        ),
      ),
    );
  }
}
