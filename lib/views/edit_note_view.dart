import 'package:flutter/material.dart';
import 'package:notes_app/widgets/body_edit_note_view.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static const String id = 'editNoteView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          BodyEditNoteView(),
         
        ],
      ),
    );
  }
}
