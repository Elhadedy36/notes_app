import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/Note_Model.dart';
import 'package:notes_app/constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());


  fetchAllNotes()
  async {

    try {
  Box<NoteModel> notesBox = Hive.box<NoteModel>(KNotesbox);
 List<NoteModel> notes =  notesBox.values.toList();
     emit(NotesSuccess(notes));
}  catch (e) {
  // TODO
  emit(NotesFailure(e.toString()));
}
  }
}
