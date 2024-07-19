
import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key, this.onTap,this.isLoading= false});
final void Function()? onTap;
bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context)
            .size
            .width, //take the screen width instead of double.infinity cuz it might cause problems
        height: 55,
        decoration: BoxDecoration(
            color: Kprimarycolor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child:isLoading? 
          SizedBox(
            height:24 ,
            width: 24,
            child: CircularProgressIndicator
            (
              color: Colors.black,
            ),
          )
          : Text(
            'Add',
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
