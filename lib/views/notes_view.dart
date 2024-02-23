import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static const String id = 'notesView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[300],
        onPressed: () {},
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: const NotesBody(),
    );
  }
}
