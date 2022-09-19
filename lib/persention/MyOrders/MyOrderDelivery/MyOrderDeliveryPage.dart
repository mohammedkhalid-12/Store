import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/MyOrders/MyOrderDelivery/MyOrderDeliveryCard.dart';

class MyOrderDeliveryPage extends StatefulWidget {
  MyOrderDeliveryPage({Key key}) : super(key: key);

  @override
  _MyOrderShippedPageState createState() => _MyOrderShippedPageState();
}

class _MyOrderShippedPageState extends State<MyOrderDeliveryPage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: HexColor(BackColor),
        body:  MyOrderDeliveryCard(),
        );
  }
}