import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Widgets/CustomButton.dart';
import 'package:notes_app/Widgets/CustomTextField.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return AddNoteForm();
  }
}

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

String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
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
              onSaved: (value)
              {
                 title=value;
              },),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hint: 'Content',
                maxlines: 5,
                 onSaved: (value)
              {
                subtitle=value;
              },
              ),
              SizedBox(height: 16,),
              CustomButton(
                onTap: () {
                if(formKey.currentState!.validate())
                {
                  formKey.currentState!.save();
          
                }else
                {
                 autoValidateMode = AutovalidateMode.always;
          
                  setState(() {
          
                  });
                }
              },),
              SizedBox(height: 32,)
            ],
          ),
        ),
      ),
    );
  }
}
