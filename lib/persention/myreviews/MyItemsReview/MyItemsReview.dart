import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/widgets/ReviewsItemsUserCard.dart';

class MyItemsReview extends StatefulWidget {
  MyItemsReview({Key key}) : super(key: key);

  @override
  _MyItemsReviewState createState() => _MyItemsReviewState();
}

class _MyItemsReviewState extends State<MyItemsReview> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: HexColor(BackColor),
        body:  ReviewItems(),
        );
  }
}