import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:notes_app/Widgets/CustomSearchIcon.dart';
import 'package:notes_app/Widgets/customNotesItem.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.Title,
    required this.icon, this.onPressed,
  });
  final String Title;
  final Icon icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          Title,
          style: TextStyle(fontSize: 32),
        ),
        Spacer(),
        CustomSearchIcon(
          icon: icon,
          onPressed:onPressed,
        ),
      ],
    );
  }
}
