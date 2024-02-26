import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/notes_cubit/notes_state.dart';
import 'package:notes_app/models/note_item_model.dart';
import 'package:notes_app/widgets/constant.dart';

class NotesCubit extends Cubit<NoteStates> {
  NotesCubit(super.initialState);

  List<NoteItemModel>? notes;

  List<NoteItemModel> fichNotes() {
    var noteBox = Hive.box<NoteItemModel>(kNotesBox);
    notes = noteBox.values.toList();
    emit(NoteInitState());
    return notes!;
  }
}
