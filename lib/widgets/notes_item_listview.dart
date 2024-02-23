import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_notes_item.dart';

class NotesItemListView extends StatelessWidget {
  const NotesItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const CustomNoteItem();
        },
      ),
    );
  }
}
