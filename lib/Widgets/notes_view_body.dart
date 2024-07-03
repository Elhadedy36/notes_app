import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/customNotesItem.dart';
import 'package:notes_app/Widgets/customappbar.dart';

class Notesviewbody extends StatelessWidget {
  const Notesviewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CustomAppbar(),
          SizedBox(
            height: 40,
          ),
          Noteitem()
        ],
      ),
    );
  }
}
