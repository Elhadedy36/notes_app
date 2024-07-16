import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
   CustomTextField({super.key, required this.hint,  this.maxlines=1, this.onSaved});
final String hint;
final int maxlines;
final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value)
       {
        if (value?.isEmpty??true)
        {
          return 'this field is Empty';
        }else
        {
          return null;
        }
      },
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