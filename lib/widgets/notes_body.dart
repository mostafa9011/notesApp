import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: mediaQuery.padding.top,
        horizontal: mediaQuery.size.width * 0.05,
      ),
      child: Column(
        children: [
          CustomAppBar(
            mediaQuery: mediaQuery,
          ),
        ],
      ),
    );
  }
}
