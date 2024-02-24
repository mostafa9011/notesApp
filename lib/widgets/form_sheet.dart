import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/models/note_item_model.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_feild.dart';

class FormSheet extends StatefulWidget {
  const FormSheet({super.key});

  @override
  State<FormSheet> createState() => _FormSheetState();
}

class _FormSheetState extends State<FormSheet> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autoValidateMode,
      key: formKey,
      child: Column(
        children: [
          const SizedBox(height: 20),
          CustomFormTextFeild(
            hintText: 'Title',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(height: 15),
          CustomFormTextFeild(
            hintText: 'Content',
            maxLines: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(height: 66),
          BlocConsumer<AddNoteCubit, AddNoteStates>(
            listener: (context, state) {
              if (state is FailureState) {
                log(state.msg);
              } else if (state is SuccessState) {
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return CustomButton(
                isLoading: state is IsLoadingState,
                text: 'Add',
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    NoteItemModel note = NoteItemModel(
                      title: title!,
                      subtitle: subTitle!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value,
                    );
                    BlocProvider.of<AddNoteCubit>(context).addNote(note);
                    // Navigator.pop(context);
                  } else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
