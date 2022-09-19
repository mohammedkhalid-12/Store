import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/ButtonBar/ButtonBar.dart';

class MypointPage extends StatefulWidget {
  
    static const String routeName = '/mypoint';
MypointPage({Key key}) : super(key: key);

  @override
  _NotfoundPageState createState() => _NotfoundPageState();
}

class _NotfoundPageState extends State<MypointPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " MyPoint",
        ),
        backgroundColor: HexColor(BottomBarcolor),
      ),
      body: Column(
        children: [
          Center(
            child: Text("لاتوجد 'نقاط'")),
        ],
      ),
    );
  }
}
