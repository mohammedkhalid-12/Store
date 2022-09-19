import 'package:flutter/material.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/Checkout/invoice.dart';
import 'package:store/utils/CustomTextStyle.dart';

class CheckOutPage extends StatefulWidget {
  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: HexColor(BackColor),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HexColor(BackColor),
        key: _scaffoldKey,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: HexColor(BottomBarcolor),
          leading: IconButton(
              color: Colors.white,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text("تفاصيل الطلب",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold)),
        ),
        body: Builder(builder: (context) {
          return Column(
            children: <Widget>[
              Expanded(
                child: Container(
                  child: ListView(
                    children: <Widget>[
                      selectedAddressSection(),
                      standardDelivery(),
                      checkoutItem(),
                      priceSection()
                    ],
                  ),
                ),
                flex: 90,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: RaisedButton(
                    onPressed: () {
                      /*Navigator.of(context).push(new MaterialPageRoute(
                          builder: (context) => OrderPlacePage()));*/
                      showThankYouBottomSheet(context);
                    },
                    child: Text(
                      "إكمال عملية  الدفع ",
                      style: CustomTextStyle.textFormFieldMedium.copyWith(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    color:  HexColor(BottomBarcolor),
                    textColor: Colors.white,
                  ),
                ),
                flex: 10,
              )
            ],
          );
        }),
      ),
    );
  }

  showThankYouBottomSheet(BuildContext context) {
    return _scaffoldKey.currentState.showBottomSheet((context) {
      return Container(
        height: 400,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey.shade200, width: 2),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16), topLeft: Radius.circular(16))),
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                child: Align(
                    alignment: Alignment.bottomCenter, child: Text("شكرا لك")),
              ),
              flex: 5,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: <Widget>[
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(children: [
                          TextSpan(
                            text:
                                "\n\nسيتم توجيهك الي  بنكك المحلي للإكمال عملية الدفع.",
                            style: CustomTextStyle.textFormFieldMedium.copyWith(
                                fontSize: 14, color: Colors.grey.shade800),
                          )
                        ])),
                    SizedBox(
                      height: 24,
                    ),
                    RaisedButton(
                   
                    onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => invoice()));
         
                    
                    
                    },
                      padding: EdgeInsets.only(left: 48, right: 48),
                      child: Text(
                        "دفع ",
                        style: CustomTextStyle.textFormFieldMedium
                            .copyWith(color: Colors.white),
                      ),
                      color:HexColor(BottomBarcolor),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                    )
                  ],
                ),
              ),
              flex: 5,
            )
          ],
        ),
      );
    },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        backgroundColor: Colors.white,
        elevation: 2);
  }

  selectedAddressSection() {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              border: Border.all(color: Colors.grey.shade200)),
          padding: EdgeInsets.only(left: 12, top: 8, right: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.all(Radius.circular(16))),
                    child: Text(
                      "المنزل",
                      style: CustomTextStyle.textFormFieldBlack.copyWith(
                          color: Colors.indigoAccent.shade200, fontSize: 8),
                    ),
                  ),
                  Text(
                    "محمدخالد محمدعثمان",
                    style: CustomTextStyle.textFormFieldSemiBold
                        .copyWith(fontSize: 14),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      createAddressText(
                          "108, الملك عبدالعزيز,  الياسميين  ", 6),
                      createAddressText("- الشارع رقم - 400023", 6),
                      createAddressText("الرياض", 6),
                      SizedBox(
                        height: 6,
                      ),
                    ],
                  ),
                  RichText(
                    textDirection: TextDirection.rtl,
                    text: TextSpan(children: [
                      TextSpan(
                          text: "جوال : ",
                          style: CustomTextStyle.textFormFieldMedium.copyWith(
                              fontSize: 12, color: Colors.grey.shade800)),
                      TextSpan(
                          text: "0923999093",
                          style: CustomTextStyle.textFormFieldBold
                              .copyWith(color: Colors.black, fontSize: 12)),
                    ]),
                  ),
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                color: Colors.grey.shade300,
                height: 1,
                width: double.infinity,
              ),
              addressAction()
            ],
          ),
        ),
      ),
    );
  }

  createAddressText(String strAddress, double topMargin) {
    return Container(
      margin: EdgeInsets.only(top: topMargin),
      child: Text(
        strAddress,
        style: CustomTextStyle.textFormFieldMedium
            .copyWith(fontSize: 12, color: Colors.grey.shade800),
      ),
    );
  }

  addressAction() {
    return Container(
      child: Row(
        children: <Widget>[
          Spacer(
            flex: 2,
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              "تعديل ",
              style: CustomTextStyle.textFormFieldSemiBold
                  .copyWith(fontSize: 12, color: Colors.indigo.shade700),
            ),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          Spacer(
            flex: 3,
          ),
          Container(
            height: 20,
            width: 1,
            color: Colors.grey,
          ),
          Spacer(
            flex: 3,
          ),
          FlatButton(
            onPressed: () {},
            child: Text("أضف  عنوان جديد",
                style: CustomTextStyle.textFormFieldSemiBold
                    .copyWith(fontSize: 12, color: Colors.indigo.shade700)),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }

  standardDelivery() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          border: Border.all(color: HexColor(BackColor), width: 1),
          color:  HexColor(BottomBarcolor)),
      margin: EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end
        ,
        children: <Widget>[
       
          Column(
            children: <Widget>[
              Text(
                " وفت التوصيل",
                style: CustomTextStyle.textFormFieldMedium.copyWith(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                " 20 - فبراير - 27    ~     فبراير ",
                style: CustomTextStyle.textFormFieldMedium.copyWith(
                  color: Colors.white,
                  fontSize: 12,
                ),
                
              )
            ],
          ),
             Radio(
              value: 1,
              groupValue: 1,
              onChanged: (isChecked) {},
              activeColor:Colors.red),
        ],
      ),
    );
  }

  checkoutItem() {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              border: Border.all(color: Colors.grey.shade200)),
          padding: EdgeInsets.only(left: 12, top: 8, right: 12, bottom: 8),
          child: ListView.builder(
            
            itemBuilder: (context, position) {
              return checkoutListItem();
            },
            itemCount: 10,
            shrinkWrap: true,
            primary: false,
            scrollDirection: Axis.vertical,
          ),
        ),
      ),
    );
  }

  checkoutListItem() {
    return Container(
    
      margin: EdgeInsets.symmetric(vertical: 4),
      child: Row(
                mainAxisAlignment: MainAxisAlignment.end,

        children: <Widget>[
        
          RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: " الكمية : ",
                  style: CustomTextStyle.textFormFieldMedium
                      .copyWith(fontSize: 12)),
              TextSpan(
                  text: "20   ",
                  style: CustomTextStyle.textFormFieldMedium
                      .copyWith(fontSize: 12, fontWeight: FontWeight.w600))
            ]
            
            ),
          ),
            Container(
            child: Text("T-shirt Ac milan   "),
            decoration:
                BoxDecoration(border: Border.all(color: Colors.grey, width: 1)),
          ),
         
        ],
      ),
    );
  }

  priceSection() {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              border: Border.all(color: Colors.grey.shade200)),
          padding: EdgeInsets.only(left: 12, top: 8, right: 12, bottom: 8),
          child: Column(
            textDirection:TextDirection.rtl,
                    mainAxisAlignment: MainAxisAlignment.end,

            children: <Widget>[
              SizedBox(
                height: 4,
              ),
              Text(
                " تفاصيل الفاتورة",
                style: CustomTextStyle.textFormFieldMedium.copyWith(
                    fontSize: 12,
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 4,
              ),
              Container(
                width: double.infinity,
                height: 0.5,
                margin: EdgeInsets.symmetric(vertical: 4),
                color: Colors.grey.shade400,
              ),
              SizedBox(
                height: 8,
              ),
              createPriceItem(getFormattedCurrency(5197),"مجموع المشتريات ",
                  Colors.grey.shade700),
              createPriceItem( getFormattedCurrency(3280)," الخصم",
                  Colors.teal.shade300),
              createPriceItem(getFormattedCurrency(96),
                  "قيمة الضريبة المضافة",  Colors.grey.shade700),
              createPriceItem(getFormattedCurrency(2013)," القيمة الإجمالية", 
                  Colors.grey.shade700),
              createPriceItem(
                  "مجانــاً",  " قيمة التوصيل"
                  ,Colors.teal.shade300),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 0.5,
                margin: EdgeInsets.symmetric(vertical: 4),
                color: Colors.grey.shade400,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                
                  Text(
                    getFormattedCurrency(2013),
                    style: CustomTextStyle.textFormFieldMedium
                        .copyWith(color: Colors.black, fontSize: 12),
                  ),
                    Text(
                    "المجموع",
                    style: CustomTextStyle.textFormFieldSemiBold
                        .copyWith(color: Colors.black, fontSize: 12),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  String getFormattedCurrency(double amount) {
    FlutterMoneyFormatter fmf = new FlutterMoneyFormatter(amount: amount);
    fmf.symbol = "ريال سعودي";
    fmf.thousandSeparator = ",";
    fmf.decimalSeparator = ".";
    fmf.spaceBetweenSymbolAndNumber = true;
    return fmf.formattedLeftSymbol;
  }

  createPriceItem(String key, String value, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            key,
            style: CustomTextStyle.textFormFieldMedium
                .copyWith(color: Colors.grey.shade700, fontSize: 12),
          ),
          Text(
            value,
            style: CustomTextStyle.textFormFieldMedium
                .copyWith(color: color, fontSize: 12),
          )
        ],
      ),
    );
  }
}
