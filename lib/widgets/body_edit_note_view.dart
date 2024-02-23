import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_feild.dart';

class BodyEditNoteView extends StatelessWidget {
  const BodyEditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      child: const Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          CustomTextFeild(hintText: 'Tetle'),
          SizedBox(height: 15),
          CustomTextFeild(hintText: 'Content', maxLines: 5),
          SizedBox(height: 66),
          CustomButton(text: 'Edit'),
        ],
      ),
    );
  }
}
