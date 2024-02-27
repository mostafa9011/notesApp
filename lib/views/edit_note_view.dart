import 'package:flutter/material.dart';
import 'package:notes_app/models/note_item_model.dart';
import 'package:notes_app/widgets/body_edit_note_view.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({
    super.key,
  });
  static const String id = 'editNoteView';

  @override
  Widget build(BuildContext context) {
    var note = ModalRoute.of(context)!.settings.arguments as NoteItemModel;
    return Scaffold(
      body: Column(
        children: [
          BodyEditNoteView(
            note: note,
          ),
        ],
      ),
    );
  }
}
