import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/Models/Note_Model.dart';
import 'package:notes_app/Views/notes_view.dart';
import 'package:notes_app/constants.dart';

void main ()async
{
  await Hive.initFlutter();
  await Hive.openBox(KNotesbox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(Notes_app());
}



class Notes_app extends StatelessWidget {
  const Notes_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
      fontFamily: 'assets/fonts/Poppins-Regular.ttf'
      ),
      home:const Notesview(),
    );
  }
}