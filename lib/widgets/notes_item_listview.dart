import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_item_model.dart';
import 'package:notes_app/widgets/custom_notes_item.dart';

class NotesItemListView extends StatefulWidget {
  const NotesItemListView({super.key});

  @override
  State<NotesItemListView> createState() => _NotesItemListViewState();
}

class _NotesItemListViewState extends State<NotesItemListView> {
  @override
  void initState() {
    BlocProvider.of<AllNotesCubit>(context).fichAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // BlocProvider.of<AllNotesCubit>(context).fichAllNotes(); //مرضتش استدعسيها هنا عشان اوفر ميموري
    // List<NoteItemModel> notes =

    /*
       [  BlocProvider.of<AllNotesCubit>(context).notes ?? []; 
        not possible because can't listen here (out of BlocProvider)
       ]
    */
    return BlocBuilder<AllNotesCubit, AllNoteStates>(
      builder: (context, state) {
        List<NoteItemModel> notes =
            BlocProvider.of<AllNotesCubit>(context).notes ?? [];
        return Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return CustomNoteItem(
                note: notes[index],
              );
            },
          ),
        );
      },
    );
  }
}
