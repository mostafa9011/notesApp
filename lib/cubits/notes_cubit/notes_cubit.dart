import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_item_model.dart';
import 'package:notes_app/widgets/constant.dart';

class AllNotesCubit extends Cubit<AllNoteStates> {
  AllNotesCubit(super.initialState);

  List<NoteItemModel>? notes;

  fichAllNotes() {
    var noteBox = Hive.box<NoteItemModel>(kNotesBox);
    notes = noteBox.values.toList();
    emit((SuccessAllNoteState()));
    //return notes!;
  }
}
