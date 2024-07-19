import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Models/Note_Model.dart';
import 'package:notes_app/Widgets/customNotesItem.dart';
import 'package:notes_app/cubit/Notes%20cubit/notes_cubit.dart';

class NotesListView extends StatelessWidget {
  NotesListView({super.key});
 /* final List<Color> colors = [
    Color(0xFFDAA520), // Goldenrod
    Color(0xFF87CEEB), // Sky Blue
    Color(0xFF673AB7), // Deep Purple
    Color(0xFF191970), // Midnight Blue
    Color(0xFFF8F8FF), // Ghost White
    Color(0xFFDC143C), // Crimson
    Color(0xFF808000), // Olive
    Color(0xFF40E0D0), // Turquoise
    Color(0xFFE6E6FA), // Lavender
    Color(0xFFFA8072), // Salmon
    Color(0xFF008080), // Teal
    Color(0xFFFF7F50), // Coral
    Color(0xFFA0522D), // Sienna
    Color(0xFFFF00FF), // Fuchsia
    Color(0xFF708090), // Slate Gray
    Color(0xFF7FFF00), // Chartreuse
    Color(0xFF800000), // Maroon
    Color(0xFF000080), // Navy
    Color(0xFFFFDAB9), // Peach Puff
    Color(0xFFD2691E), // Chocolate
  ];*/

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(

      
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Expanded(
          child: ListView.separated(
              padding: EdgeInsets.zero,
              itemCount:notes.length,
              separatorBuilder: (context, index) => SizedBox(
                    height: 10,
                  ),
                  
              itemBuilder: (context, index) {
                return Noteitem(
                  notes: notes[index],
                 // color: colors[index],
                );
              }),
        );
      },
    );
  }
}
