import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/Models/Note_Model.dart';
import 'package:notes_app/Widgets/CustomButton.dart';
import 'package:notes_app/Widgets/CustomTextField.dart';
import 'package:notes_app/cubit/add%20note%20cubit/add_note_cubit_cubit.dart';

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
      padding: EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom),
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
            Color_listview(),
            SizedBox(
              height: 10,
            ),
            BlocBuilder<AddNoteCubit, AddNoteCubitState>(
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteCubitLoading ? true : false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var currentdate = DateTime.now();
                      var formattedcurrentDate =
                          DateFormat('mm-dd-yyyy').format(currentdate);
                      var notemodel = NoteModel(
                          title: title!,
                          subtitle: subtitle!,
                          date: formattedcurrentDate,
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

class Color_item extends StatelessWidget {
  const Color_item({super.key, required this.color,this.onTap});
  final Color color;
 final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: 30,
        backgroundColor: color,
      ),
    );
  }
}

class Color_listview extends StatelessWidget {
  Color_listview({super.key});
    void Function()? onTap;
  final List<Color> colors = [
    Color(0xFFDAA520), // Goldenrod
    Color(0xFF87CEEB), // Sky Blue
    Color(0xFF673AB7), // Deep Purple
    Color(0xFF191970), // Midnight Blue
    Color(0xFFF8F8FF), // Ghost White
    Color(0xFFDC143C), // Crimson
    Color(0xFF808000), // Olive
    Color(0xFF40E0D0), // Turquoise
    Color(0xFFE6E6FA), // Lavender
    Color(0xFFFA8072), // Salmon
    Color(0xFF008080), // Teal
    Color(0xFFFF7F50), // Coral
    Color(0xFFA0522D), // Sienna
    Color(0xFFFF00FF), // Fuchsia
    Color(0xFF708090), // Slate Gray
    Color(0xFF7FFF00), // Chartreuse
    Color(0xFF800000), // Maroon
    Color(0xFF000080), // Navy
    Color(0xFFFFDAB9), // Peach Puff
    Color(0xFFD2691E), // Chocolate
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Color_item(
              onTap: onTap,
              color: colors[index],
            ),
          );
        },
      ),
    );
  }
}
