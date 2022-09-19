import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/MyOrders/MyOrderShipped/MyOrderShippedCard.dart';

class MyOrderShippedPage extends StatefulWidget {
  MyOrderShippedPage({Key key}) : super(key: key);

  @override
  _MyOrderShippedPageState createState() => _MyOrderShippedPageState();
}

class _MyOrderShippedPageState extends State<MyOrderShippedPage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: HexColor(BackColor),
        body:  MyOrderShippedCard(),
        );
  }
}