
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context)
          .size
          .width, //take the screen width instead of double.infinity cuz it might cause problems
      height: 55,
      decoration: BoxDecoration(
          color: Kprimarycolor, borderRadius: BorderRadius.circular(8)),
      child: Center(
        child: Text(
          'Add',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}