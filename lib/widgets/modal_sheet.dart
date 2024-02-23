import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_feild.dart';

class ModalSheet extends StatelessWidget {
  const ModalSheet({
    super.key,
    required this.hintText,
    this.maxLines = 1,
  });
  final int maxLines;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            CustomTextFeild(hintText: 'Title'),
            SizedBox(height: 15),
            CustomTextFeild(
              hintText: 'Content',
              maxLines: 5,
            ),
            SizedBox(height: 66),
            CustomButton(text: 'Add'),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
