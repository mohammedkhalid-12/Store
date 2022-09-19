import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title:Text(" ProfilePage",), backgroundColor: HexColor(BottomBarcolor),),
     );
  }
}