import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/SendFeedback/SendFeeedBackform.dart';

class SendFeedbackPage extends StatefulWidget {
              static const String routeName = '/sendFeedBack';

  @override
  _SendFeedbackPageState createState() => _SendFeedbackPageState();
}

class _SendFeedbackPageState extends State<SendFeedbackPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text(
          " Send FeedBack",
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
                      Text("الرجاء تحديد المشكلة بدقة   ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ],
                  ),
                SendFeeedBack()
                ]))));
  }
}