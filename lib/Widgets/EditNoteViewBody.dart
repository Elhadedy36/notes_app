import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/customappbar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children:
         [
          SizedBox(height: 60,),
          CustomAppbar(Title: 'Edit Notes',icon: Icons.edit,),

        ],
      ),
    );
  }
}
