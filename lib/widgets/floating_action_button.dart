import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';
import 'package:notes_app/widgets/modal_sheet.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kPrimaryColor,
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          context: context,
          builder: (context) {
            return const ModalSheet();
          },
        );
      },
      child: const Icon(
        Icons.add,
        color: Colors.black,
      ),
    );
  }
}
