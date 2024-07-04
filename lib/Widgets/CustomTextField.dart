import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxlines=1});
final String hint;
final int maxlines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Kprimarycolor,
      maxLines: maxlines,
      decoration: InputDecoration(
        
        hintText: hint,
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