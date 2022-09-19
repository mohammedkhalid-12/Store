import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/Settings/Country/CountryList.dart';

class CountryPage extends StatefulWidget {
  CountryPage({Key key}) : super(key: key);

  @override
  State<CountryPage> createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(BackColor),
      appBar: AppBar(
        title: Text(
          " Country Chanage",
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
                  Text(":أختر  البلد ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                ],
              ),
              
                 CountryListPage(),
                
              
            ],
          ),
        ),
      ),
    );
  }

}