import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/Models/Note_Model.dart';
import 'package:notes_app/Widgets/Add%20note%20form.dart';
import 'package:notes_app/Widgets/CustomButton.dart';
import 'package:notes_app/Widgets/CustomTextField.dart';
import 'package:notes_app/cubit/add_note_cubit_cubit.dart';

class AddNoteButtonSheet extends StatelessWidget {
   AddNoteButtonSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteCubitState>(
      listener: (context, state) {
        // TODO: implement listener
        if(state is AddNoteCubitFailure)
        {
          print('Failed ${state.errMessage}');
        }
        if(state is AddNoteCubitSuccess)
        {
          Navigator.pop(context);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall:state is AddNoteCubitLoading? true:false ,
          child: AddNoteForm());
      },
    ));
  }
}
