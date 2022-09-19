import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';


class  NotFoundPage extends StatefulWidget {
  NotFoundPage({Key key}) : super(key: key);

  @override
  _NotfoundPageState createState() => _NotfoundPageState();
}

class _NotfoundPageState extends State<NotFoundPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title:Text(" Notfound",), backgroundColor: HexColor(BottomBarcolor),),
     );
  }
}