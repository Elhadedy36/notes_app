import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Models/Note_Model.dart';
import 'package:notes_app/Widgets/CustomButton.dart';
import 'package:notes_app/Widgets/CustomTextField.dart';
import 'package:notes_app/cubit/add_note_cubit_cubit.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: formKey,
        autovalidateMode: autoValidateMode,
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hint: 'Title',
              onSaved: (value) {
                title = value;
              },
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: 'Content',
              maxlines: 5,
              onSaved: (value) {
                subtitle = value;
              },
            ),
            SizedBox(
              height: 16,
            ),
            BlocBuilder<AddNoteCubit, AddNoteCubitState>(
              
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteCubitLoading? true:false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var notemodel = NoteModel(
                          title: title!,
                          subtitle: subtitle!,
                          date: DateTime.now().toString(),
                          color: Colors.blue.value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(notemodel);
                    } else {
                      autoValidateMode = AutovalidateMode.always;

                      setState(() {});
                    }
                  },
                );
              },
            ),
            SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}
