import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Kprimarycolor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(color: Kprimarycolor),
        enabledBorder: buildBorder(),
        border: buildBorder(),
        focusedBorder: buildBorder(Kprimarycolor)
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color:color?? Colors.white
        ),
      );
  }
}