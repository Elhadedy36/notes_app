
import 'package:flutter/material.dart';
import 'package:notes_app/Widgets/CustomSearchIcon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Notes',style: TextStyle(fontSize: 32 ),),
        Spacer(),
        CustomSearchIcon(),

      ],
    );
  }
}




