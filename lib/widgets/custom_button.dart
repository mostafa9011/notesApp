import 'package:flutter/material.dart';
import 'package:notes_app/widgets/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    required this.isLoading,
  });
  final String text;
  final void Function()? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: kPrimaryColor,
        fixedSize: Size(MediaQuery.of(context).size.width, 16),
      ),
      onPressed: onPressed,
      child: isLoading
          ? const SizedBox(
            height: 15,
            width: 15,
            child: CircularProgressIndicator(
                color: Colors.black,
              ),
          )
          : Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }
}
