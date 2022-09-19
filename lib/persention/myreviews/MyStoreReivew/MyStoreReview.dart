import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/widgets/ReviewsStoreUserCard.dart';

class MyStoreReview extends StatefulWidget {
  MyStoreReview({Key key}) : super(key: key);

  @override
  _MyStoreReviewState createState() => _MyStoreReviewState();
}

class _MyStoreReviewState extends State<MyStoreReview> {
  @override Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: HexColor(BackColor),
        body:      ReviewStoreUser()

        );
  }
}