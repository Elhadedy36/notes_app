
import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/customNotesItem.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child:ListView.separated(
        itemCount: 10, 
        separatorBuilder: (context, index) => SizedBox(height: 10,),
        itemBuilder: (context,index)
    {
             return  Noteitem();
    }
    ),
    );
  }
}



