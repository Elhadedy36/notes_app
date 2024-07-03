import 'package:flutter/material.dart';
import 'package:notes_app/Views/notes_view.dart';

void main ()
{
  runApp(Notes_app());
}



class Notes_app extends StatelessWidget {
  const Notes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      home:const Notesview(),
    );
  }
}