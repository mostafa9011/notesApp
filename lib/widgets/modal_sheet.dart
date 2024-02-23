import 'package:flutter/material.dart';
import 'package:notes_app/widgets/form_sheet.dart';

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
        child: FormSheet(),
      ),
    );
  }
}
