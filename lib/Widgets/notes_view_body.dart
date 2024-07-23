import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Widgets/NotesListView.dart';
import 'package:notes_app/Widgets/customNotesItem.dart';
import 'package:notes_app/Widgets/customappbar.dart';
import 'package:notes_app/cubit/Notes%20cubit/notes_cubit.dart';

class Notesviewbody extends StatefulWidget {
  const Notesviewbody({super.key});

  @override
  State<Notesviewbody> createState() => _NotesviewbodyState();
}

class _NotesviewbodyState extends State<Notesviewbody> {
  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CustomAppbar(Title: 'Notes',icon: Icon(Icons.search),),
          SizedBox(
            height: 40,
          ),
          NotesListView(),
        ],
      ),
    );
  }
}
