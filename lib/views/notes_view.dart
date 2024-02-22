import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/notes_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static const String id = 'notesView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:NotesBody(),
    );
  }
}
