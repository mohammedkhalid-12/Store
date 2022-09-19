import 'package:flutter/material.dart';

Widget createDrawerBodyItem(
   {IconData icon, String text, GestureTapCallback onTap}) {
 return ListTile(
   title: Padding(
     padding: const EdgeInsets.all(8.0),
     child: Row(
       children: <Widget>[
         Icon(icon),
         Padding(padding: EdgeInsets.all(5)),
         Text(text)
       ],
     ),
   ),
   onTap: onTap,
 );
}