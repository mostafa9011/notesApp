import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/widgets/color_piker.dart';

class ColorPikerList extends StatefulWidget {
  const ColorPikerList({super.key});

  @override
  State<ColorPikerList> createState() => _ColorPikerListState();
}

class _ColorPikerListState extends State<ColorPikerList> {
  List<Color> colorsList = const [
    Color(0xff8ecae6),
    Color(0xff219ebc),
    Color(0xff023047),
    Color(0xffffb703),
    Color(0xfffb8500),
  ];

  int currenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorsList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currenIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = colorsList[index];
              });
            },
            child: ColorPiker(
              selectedColor: currenIndex == index,
              color: colorsList[index],
            ),
          );
        },
      ),
    );
  }
}
