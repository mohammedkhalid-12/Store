import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';

bool ishandTake = false;
bool isDhl = false;
bool isDelivery = false;

class CheckBoxPage extends StatefulWidget {
  CheckBoxPage({Key key}) : super(key: key);

  @override
  _CheckBoxState createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBoxPage> {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text("شحن",
              style: TextStyle(color: Colors.white),

      ),
      Checkbox(
           focusColor: Colors.green,
        activeColor:HexColor(BottomBarcolor),
          value: isDhl,
          onChanged: (value) {
            setState(() {
              var bool = isDhl = value;
              ishandTake = !value;
              isDelivery = !value;
            });
          }),
      Text(
        "توصيل",
        style: TextStyle(color: Colors.white),
      ),
      Checkbox(
        focusColor: Colors.green,
        activeColor:HexColor(BottomBarcolor),
          value: isDelivery,
          onChanged: (value) {
            setState(() {
              var bool = isDelivery = value;
              ishandTake = !value;
              isDhl = !value;

            });
          }),
           Text(
        "إستلام",
        style: TextStyle(color: Colors.white),
      ),
      Checkbox(
        focusColor: Colors.green,
        activeColor:HexColor(BottomBarcolor),
          value: ishandTake,
          onChanged: (value) {
            setState(() {
              var bool = ishandTake = value;
              isDhl = !value;
              isDelivery = !value;
            });
          })
    ]);
  }
}
