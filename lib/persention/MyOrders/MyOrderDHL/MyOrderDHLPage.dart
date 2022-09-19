import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/MyOrders/MyOrderDHL/MyOrderDHLCard.dart';
import 'package:store/persention/MyOrders/MyOrderShipped/MyOrderShippedCard.dart';

class MyOrderDHLPage extends StatefulWidget {
  MyOrderDHLPage({Key key}) : super(key: key);

  @override
  _MyOrderShippedPageState createState() => _MyOrderShippedPageState();
}

class _MyOrderShippedPageState extends State<MyOrderDHLPage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: HexColor(BackColor),
        body:  MyOrderDHLCard(),
        );
  }
}