import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/Settings/FormFiled/FormFiledPhoneNumber.dart';

class ChanagePhoneNumberPage extends StatefulWidget {
  ChanagePhoneNumberPage({Key key}) : super(key: key);

  @override
  _ChanagePhoneNumberPageState createState() => _ChanagePhoneNumberPageState();
}

class _ChanagePhoneNumberPageState extends State<ChanagePhoneNumberPage> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor(BackColor),
        appBar: AppBar(
          title: Text(
            " Chanage Phone Number",
          ),
          backgroundColor: HexColor(BottomBarcolor),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
                                        padding: EdgeInsets.only(top: 20),

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
                      ),
                      Text(":تغيير رقم الجوال  ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                    ],
                  ),
                  FormFiledPhoneNumber()
                ]))));
  }
}
