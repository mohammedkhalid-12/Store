import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/Checkout/CheckOutpage.dart';
import 'package:store/utils/CustomTextStyle.dart';
import 'package:store/utils/Utils.dart';
import 'package:store/value/Images.dart';
import 'package:store/widgets/checkBox.dart';

class ReOderPage extends StatefulWidget {
  ReOderPage({Key key}) : super(key: key);

  @override
  _ReOderPageState createState() => _ReOderPageState();
}

class _ReOderPageState extends State<ReOderPage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: HexColor(BackColor),
      appBar: AppBar(title: 
      Text(
        
        "تفاصيل السلة ",
        style: CustomTextStyle.textFormFieldBold
            .copyWith(fontSize: 16, color: Colors.white),
      ),
      backgroundColor: HexColor(BottomBarcolor),
      ),
      resizeToAvoidBottomInset: false,
      body: 
      SafeArea(
        
        child: 
    
      
      Builder(
        builder: (context) {
          return ListView(
            children: <Widget>[
              createCartList(),
              footer(context)
            ],
          );
        },
      ),
    ))
    ;
  }

  footer(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
             CheckBoxPage()
            /*   Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  "\$400.99",
                  style: CustomTextStyle.textFormFieldBlack.copyWith(
                      color: HexColor(BottomBarcolor), fontSize: 14),
                ),
              ), */
              /*  Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  "المجموع(شامل ضريبة القيمة المضافة)",
                  style: CustomTextStyle.textFormFieldMedium
                      .copyWith(color: Colors.grey, fontSize: 12),
                ),
              ), */
            ],
          ),
          Utils.getSizedBox(height: 10),
          RaisedButton(
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => CheckOutPage()));
            },
            color: HexColor(BottomBarcolor),
            padding: EdgeInsets.only(top: 15, left: 60, right: 60, bottom: 12),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(24))),
            child: Text(
              "إعادة الطلب",
              style: CustomTextStyle.textFormFieldSemiBold
                  .copyWith(color: Colors.white),
            ),
          ),
          Utils.getSizedBox(height: 8),
        ],
      ),
      margin: EdgeInsets.only(top: 16),
    );
  }



  createCartList() {
    return ListView.builder(
      shrinkWrap: true,
      primary: false,
      itemBuilder: (context, position) {
        return createCartListItem();
      },
      itemCount: 5,
    );
  }

  createCartListItem() {
    return Stack(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16, right: 16, top: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(16))),
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(right: 8, left: 8, top: 8, bottom: 8),
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Colors.blue.shade200,
                    image: DecorationImage(
                        image:AssetImage( Images.item),
                        )
                        ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 8, top: 4),
                        child: Text(
                          "T-shirt AC Milan",
                          maxLines: 2,
                          softWrap: true,
                          style: CustomTextStyle.textFormFieldSemiBold
                              .copyWith(fontSize: 14),
                        ),
                      ),
                      Utils.getSizedBox(height: 1),
                      Text(
                        "ملابس رياضية",
                        style: CustomTextStyle.textFormFieldRegular
                            .copyWith(color: Colors.grey, fontSize: 14),
                      ),
                     
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "\$400.99",
                              style: CustomTextStyle.textFormFieldBlack
                                  .copyWith(color: HexColor(BottomBarcolor)),
                            ),
                            
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Icon(
                                    Icons.remove,
                                    size: 24,
                                    color: Colors.grey.shade700,
                                  ),
                                  Container(
                                    color: Colors.grey.shade200,
                                    padding: const EdgeInsets.only(
                                        bottom: 2, right: 12, left: 12),
                                    child: Text(
                                      "1",
                                      style:
                                          ShoppingAddNumber.textFormFieldSemiBold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 24,
                                    color: Colors.grey.shade700,
                                  ),
                                  
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                flex: 100,
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          
          child: Container(
            width: 24,
            height: 24,
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 20, top: 20),
            child: Icon(
              Icons.close,
              color: Colors.white,
              size: 20,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                color: HexColor(BottomBarcolor)),
          ),
        ),
        
      ],
    );
  }
}
  
