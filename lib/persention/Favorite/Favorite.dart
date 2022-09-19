import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/Card/StoreItemsCard.dart';


class FavoritePage extends StatefulWidget {
    static const String routeName = '/favorite';

  FavoritePage({Key key}) : super(key: key);

  @override
  _StoreProductState createState() => _StoreProductState();
}

class _StoreProductState extends State<FavoritePage> {
  int ondeliver = 0;
  int onStore = 0;
  int onDHL = 0;
  bool secondShift = false;
  @override
  Widget build(BuildContext context) {
    // items view for the store

    return Scaffold(
      appBar: AppBar(
        title: Text(
          " Favorite",
        ),
        backgroundColor: HexColor(BottomBarcolor),
      ),
      body: Container(
        child: ItemsCard(),
      ),
    );
  }
}
