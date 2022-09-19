import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/ButtonBar/ButtonBar.dart';
import 'package:store/persention/Notification/NotificationCard.dart';

class NotificationPage extends StatefulWidget {
            static const String routeName = '/notification';

  NotificationPage({Key key}) : super(key: key);

  @override
  _NotfoundPageState createState() => _NotfoundPageState();
}

class _NotfoundPageState extends State<NotificationPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " Notification",
        ),
        backgroundColor: HexColor(BottomBarcolor),
      ),

        body:  NotificationCard()
    );
        
  }
}
