import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';

class CustomFormTextFeild extends StatelessWidget {
  const CustomFormTextFeild({
    super.key,
    this.maxLines = 1,
    required this.hintText,
    this.onSaved,
    this.onChanged,
  });
  final int maxLines;
  final String hintText;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value) {
        //it mean if value is empty or == null return 'Feild Required ! '; /// else retuen null; ✔
        if (value?.isEmpty ?? true) {
          return 'Feild Required ! ';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: kPrimaryColor),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
          fontSize: 20,
        ),
      ),
    );
  }
}
