
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon, this.onPressed});
final Icon icon;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46, 
      decoration: BoxDecoration(
        color: Color(0XFF3B3B3B), 
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: IconButton(icon: icon,onPressed: onPressed,),
      ),
    );
  }
}