import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/MyOrders/MyOrder.dart';
import 'package:store/persention/myreviews/MyReviews.dart';
import 'package:store/persention/myreviews/RateMyorder.dart';
import 'package:store/value/Images.dart';

class invoice extends StatefulWidget {
        static const String routeName = '/invoice';

  invoice({Key key}) : super(key: key);

  @override
  _invoiceState createState() => _invoiceState();
}

class _invoiceState extends State<invoice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor(BottomBarcolor),
        title: Text(
          " نجاح",
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    Images.checktwo,
                    height: 100.0,
                    width: 200.0,
                  ),
                ),
              ),
            ),
            Text(
              "تم إتمام العملية بنجاح",
              style: TextStyle(color: HexColor(BottomBarcolor)),
            ),
            SizedBox(
              height: 9,
            ),
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "2022-01-09:12:00:20:40",
                        style: TextStyle(color: HexColor(BottomBarcolor)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        ":" + "تاريخ العملية  ",
                        style: TextStyle(color: HexColor(BottomBarcolor)),
                      ),
                    ],
                  ),
                  Divider(
                      color: HexColor(BottomBarcolor),
                      indent: 10,
                      endIndent: 10),
                  SizedBox(height: 23),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "99023#",
                        style: TextStyle(color: HexColor(BottomBarcolor)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        ":" + "رقم العملية ",
                        style: TextStyle(color: HexColor(BottomBarcolor)),
                      ),
                    ],
                  ),
                  Divider(
                      color: HexColor(BottomBarcolor),
                      indent: 10,
                      endIndent: 10),
                  SizedBox(height: 23),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "محمدخالدمحمدعثمان",
                        style: TextStyle(color: HexColor(BottomBarcolor)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        ":" + "أسم العميل  ",
                        style: TextStyle(color: HexColor(BottomBarcolor)),
                      ),
                    ],
                  ),
                  Divider(
                      color: HexColor(BottomBarcolor),
                      indent: 10,
                      endIndent: 10),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        " 500.200" + "ريال سعودي",
                        style: TextStyle(color: HexColor(BottomBarcolor)),
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        ":" + " قيمة المشتريات ",
                        style: TextStyle(color: HexColor(BottomBarcolor)),
                      ),
                    ],
                  ),
                  Divider(
                      color: HexColor(BottomBarcolor),
                      indent: 10,
                      endIndent: 10),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        " شحن",
                        style: TextStyle(color: HexColor(BottomBarcolor)),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        ":" + " نوع الطلب  ",
                        style: TextStyle(color: HexColor(BottomBarcolor)),
                      ),
                    ],
                  ),
                  Divider(
                      color: HexColor(BottomBarcolor),
                      indent: 10,
                      endIndent: 10),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        " 500.200" + "ريال سعودي",
                        style: TextStyle(color: HexColor(BottomBarcolor)),
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        ":" + " سعر التوصيل ",
                        style: TextStyle(color: HexColor(BottomBarcolor)),
                      ),
                    ],
                  ),
                  Divider(
                      color: HexColor(BottomBarcolor),
                      indent: 10,
                      endIndent: 10),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "فضاء الاستشارية ",
                        style: TextStyle(color: HexColor(BottomBarcolor)),
                        textDirection: TextDirection.rtl,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        ":" + " اسم المتجر ",
                        style: TextStyle(color: HexColor(BottomBarcolor)),
                      ),
                    ],
                  ),
                  Divider(
                      color: HexColor(BottomBarcolor),
                      indent: 10,
                      endIndent: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            Images.qr,
                            height: 100.0,
                            width: 200.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                    onPressed: () {          
                      
 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => RateMyOrderPage()));
        },
                    child: Text(
                      "موافق",
                      style: TextStyle(color: HexColor(BottomBarcolor)),
                      
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
