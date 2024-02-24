import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/widgets/form_sheet.dart';

class ModalSheet extends StatelessWidget {
  const ModalSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(AddNoteInitState()),
      child: BlocBuilder<AddNoteCubit, AddNoteStates>(
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is IsLoadingState,
            child: Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(
                child: FormSheet(),
              ),
            ),
          );
        },
      ),
    );
  }
}
