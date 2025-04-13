import 'package:flutter/material.dart';
import 'package:tawasel/Models/auth_models/auth_api_success_response_model.dart';
import 'package:tawasel/widgets/content_app_bar.dart';

import '../widgets/content_section.dart';
import '../widgets/main_bottom_navigation_bar.dart';

class LearningContentScreen extends StatelessWidget {
  const LearningContentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const ContentAppBar(text: 'المحتوى'),
            Expanded(child: ContentSection(id: "المحتوى")),
          ],
        ),
      ),
      bottomNavigationBar: const MainBottomNavigationBar(currentIndex: 3),
    );
  }
}
