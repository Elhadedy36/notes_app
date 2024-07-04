import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/notes_view_body.dart';

class Notesview extends StatelessWidget {
  const Notesview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        child: Icon(Icons.add),
        onPressed: ()
        {

        }
        ),
      body: Notesviewbody(),
    );
  }
}
