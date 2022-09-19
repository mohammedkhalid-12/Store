
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';

class ChanageLocationPage extends StatefulWidget {
  ChanageLocationPage({Key key}) : super(key: key);

  @override
  _ChangeEmailPageState createState() => _ChangeEmailPageState();
}

class _ChangeEmailPageState extends State<ChanageLocationPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        backgroundColor: HexColor(BackColor),
        appBar: AppBar(
          title: Text(
            " Chanage Location",
          ),
          backgroundColor: HexColor(BottomBarcolor),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              padding: EdgeInsets.only(top:10),
                alignment: Alignment.topRight,
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                    color: Colors.white, shape: BoxShape.rectangle),
                child: Column(children: [
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      
                      SizedBox(
                        width: 20,
                        height: 40,
                      ),
                      Text("الرجاء تحديد موقعك بدقة   ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ],
                  ),
                ]))));
  }
}