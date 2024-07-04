
import 'package:flutter/material.dart';

class Noteitem extends StatelessWidget {
  const Noteitem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCD7A),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              'Flutter tips',
              style: TextStyle(color: Colors.black, fontSize: 28),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16,bottom: 16),
              child: Text(
                'learn flutter now with tharwat samy note app',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5), 
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                //  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 25,
                )),
                
          ),
          Padding(
            padding: const EdgeInsets.only(right:24 ),
            child: Text('May 21,2022',style: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 16
            ),),
          ),
        ],
      ),
    );
  }
}