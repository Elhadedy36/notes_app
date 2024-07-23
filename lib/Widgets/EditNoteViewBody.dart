import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Models/Note_Model.dart';
import 'package:notes_app/Widgets/CustomTextField.dart';
import 'package:notes_app/Widgets/customappbar.dart';
import 'package:notes_app/cubit/Notes%20cubit/notes_cubit.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
   String? title,content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CustomAppbar(
            Title: 'Edit Notes',
            icon: Icon(Icons.refresh_outlined),
            onPressed: () {
              widget.note.title=title??widget.note.title;//if null use old title
          widget.note.subtitle=content??widget.note.subtitle;
          widget.note.save();
        Navigator.pop(context);
        BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(
            hint: 'Title',
            onChange: (value) {
              title=value;
            },
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChange: (p0) {
              content=p0;
            },
            hint: 'Content',
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
