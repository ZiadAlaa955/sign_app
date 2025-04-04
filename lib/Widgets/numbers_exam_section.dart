import 'package:flutter/widgets.dart';
import 'package:tawasel/widgets/camera_section.dart';
import 'package:tawasel/widgets/mcq_section.dart';

class NumbersExamSection extends StatelessWidget {
  const NumbersExamSection({
    super.key,
    required this.mcqItems,
    required this.camItems,
  });

  final List<Map<String, String>> mcqItems;
  final List<Map<String, String>> camItems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'اختر الرقم الصحيح بناء على الإشارة',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              McqSection(items: mcqItems),
              SizedBox(height: 30),
              Text(
                "تمثيل الرقم المطلوب:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              CameraSection(items: camItems),
            ],
          ),
        ),
      ),
    );
  }
}
