import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/models/note_item_model.dart';
import 'package:notes_app/widgets/constant.dart';

class AddNoteCubit extends Cubit<AddNoteStates> {
  AddNoteCubit(super.initialState);
  addNote(NoteItemModel note) async {
    emit(IsLoadingState());
    try {
      var noteBox = Hive.box<NoteItemModel>(kNotesBox);
      await noteBox.add(note);
      emit(SuccessState());
    } catch (e) {
      emit(FailureState(msg: e.toString()));
    }
  }
}
