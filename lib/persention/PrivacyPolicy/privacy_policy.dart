import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';

class PrivacyPolicyPage extends StatefulWidget {
            static const String routeName = '/policy';

  @override
  _PrivacyPolicyPageState createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text(
          " Privacy&Police",
        ),
        backgroundColor: HexColor(BottomBarcolor),
      ),
      body: Column(
        children: [
          Center(child: Text("لاتوجد خصوصية")),
        ],
      ),
    );
  }
}
