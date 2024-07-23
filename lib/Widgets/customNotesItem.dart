
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Models/Note_Model.dart';
import 'package:notes_app/Views/EditNoteView.dart';
import 'package:notes_app/cubit/Notes%20cubit/notes_cubit.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({super.key, /*this.color,*/ required this.notes});
//final Color? color;
final NoteModel notes;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)
        {
          return EditNoteView(note: notes,);

        }));
      },
      child: Container(
        padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color: Color(notes.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                notes.title,
                style: TextStyle(color: Colors.black, fontSize: 28),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 16,bottom: 16),
                child: Text(
                  notes.subtitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5), 
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    notes.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: Icon(
                    Icons.delete,
                  //  FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 25,
                  )),
                  
            ),
            Padding(
              padding: const EdgeInsets.only(right:24 ),
              child: Text(notes.date,style: TextStyle(
                color: Colors.black.withOpacity(0.6),
                fontSize: 16
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
