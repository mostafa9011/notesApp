import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_item_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/custom_text_feild.dart';

class BodyEditNoteView extends StatefulWidget {
  const BodyEditNoteView({
    super.key,
    required this.note,
  });

  final NoteItemModel note;

  @override
  State<BodyEditNoteView> createState() => _BodyEditNoteViewState();
}

class _BodyEditNoteViewState extends State<BodyEditNoteView> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
      ),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save(); // from hive  => Update values.
              BlocProvider.of<AllNotesCubit>(context).fichAllNotes(); // to refrish
              Navigator.pop(context); 
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          CustomFormTextFeild(
            hintText: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 15),
          CustomFormTextFeild(
            hintText: widget.note.subtitle,
            maxLines: 5,
            onChanged: (value) {
              content = value;
            },
          ),
          const SizedBox(height: 66),
          // CustomButton(
          //   text: 'Edit',
          //   isLoading: false,
          // ),
        ],
      ),
    );
  }
}
