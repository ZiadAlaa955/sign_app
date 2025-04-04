import 'package:flutter/material.dart';

class ProgressCardtextField extends StatelessWidget {
  const ProgressCardtextField({
    super.key,
    required this.title,
    required this.textFieldData,
  });

  final String title;
  final String textFieldData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          height: 45,
          child: TextField(
            readOnly: true,
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[100],
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
            textAlign: TextAlign.center,
            controller: TextEditingController(text: textFieldData),
          ),
        ),
      ],
    );
  }
}
