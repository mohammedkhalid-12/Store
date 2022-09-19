import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';

import 'langaugesList.dart';

class LangaugeChanagePage extends StatefulWidget {
  LangaugeChanagePage({Key key}) : super(key: key);

  @override
  _LangaugeChanagePageState createState() => _LangaugeChanagePageState();
}

class _LangaugeChanagePageState extends State<LangaugeChanagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(BackColor),
      appBar: AppBar(
        title: Text(
          " Language Chanage",
        ),
        backgroundColor: HexColor(BottomBarcolor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          padding: EdgeInsets.only(top: 30
          ),
          alignment: Alignment.topRight,
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width / 1,
          decoration:
              BoxDecoration(color: Colors.white, shape: BoxShape.rectangle),
          child: Column(
            children: [
              Row(
                textDirection: TextDirection.rtl,
                children: [
                                                SizedBox(height:20),

                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(height: 30),
                  Text(":أختر اللغـة ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
              
                 LangugageList(),
                
              
            ],
          ),
        ),
      ),
    );
  }
}
