import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Models/Note_Model.dart';
import 'package:notes_app/constants.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubit() : super(AddNoteCubitInitial());


bool isLoading = false;
  addNote(NoteModel note) async
  {
    emit(AddNoteCubitLoading());

    try {
  Box<NoteModel> notesBox = Hive.box<NoteModel>(KNotesbox);
     await notesBox.add(note);
     emit(AddNoteCubitSuccess());
}  catch (e) {
  // TODO
  emit(AddNoteCubitFailure(e.toString()));
}
  }
}
