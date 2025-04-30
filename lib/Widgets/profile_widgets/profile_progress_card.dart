import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tawasel/widgets/profile_widgets/progress_card_text_field.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 2,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              children: [
                Icon(FontAwesomeIcons.spinner),
                SizedBox(width: 10),
                Text(
                  'التقدم',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 10),
            ProgressCardtextField(title: 'المستوي', textFieldData: '1'),
            SizedBox(height: 10),
            ProgressCardtextField(title: 'النقاط', textFieldData: '10'),
          ],
        ),
      ),
    );
  }
}
