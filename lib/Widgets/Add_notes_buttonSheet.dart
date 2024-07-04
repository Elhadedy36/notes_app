import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/CustomTextField.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 32  ,),
          CustomTextField(hint: 'Title'),
          SizedBox(height: 16,),
          CustomTextField(hint: 'Content',maxlines: 5,)
        ],
      ),
    );
  }
}
