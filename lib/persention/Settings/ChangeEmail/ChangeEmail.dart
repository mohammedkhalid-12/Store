import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/Settings/FormFiled/InputDeco_design.dart';

class ChangeEmailPage extends StatefulWidget {
  ChangeEmailPage({Key key}) : super(key: key);

  @override
  _ChangeEmailPageState createState() => _ChangeEmailPageState();
}

class _ChangeEmailPageState extends State<ChangeEmailPage> {
  String cemail, email;

  //TextController to read text entered in text field
  TextEditingController vemail = TextEditingController();
  TextEditingController confirmemail = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(BackColor),
      appBar: AppBar(
        title: Text(
          " Chanage Email",
        ),
        backgroundColor: HexColor(BottomBarcolor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          padding: const EdgeInsets.only(top: 30.0),
          height: 500,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topRight,
                    child: Text("تغيير البريد الإلكتروني",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.rectangle,
                        borderRadius: new BorderRadius.circular(2.0),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.rectangle,
                          borderRadius: new BorderRadius.circular(2.0),
                        ),
                        child: TextFormField(
                          readOnly: true,
                          decoration: InputDecoration(
                            errorStyle: TextStyle(
                                color: HexColor(BottomBarcolor), height: 0),
                            hintTextDirection: TextDirection.rtl,
                            border: InputBorder.none,
                            hintStyle:  TextStyle(
                            color: Colors.grey[600],
                          ),
                            hintText: '   mohammed@gmail.com',
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topRight,
                    child: Text(" أدخل البريد الإلكتروني",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: HexColor(BottomBarcolor),
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.rectangle,
                        borderRadius: new BorderRadius.circular(2.0),
                      ),
                      child: TextFormField(
                        controller: vemail,
                        textDirection: TextDirection.rtl,
                        decoration: InputDecoration(
                          errorStyle: TextStyle(
                              color: HexColor(BottomBarcolor), height: 0),
                          icon: Icon(
                            Icons.email,
                            textDirection: TextDirection.rtl,
                          ),
                          hintText: '   Example@gmail.com',
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                          ),
                          hintTextDirection: TextDirection.rtl,
                          border: InputBorder.none,
                        ),
                        keyboardType: TextInputType.text,
                        validator: (String value) {
                          if (value.isEmpty) {
                            return ' الرجاء تعبئة هذا الحقل';
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return 'الرجاء إدخال بريد صالح';
                          }
                          return null;
                        },
                        onSaved: (String value) {
                          cemail = value;
                        },
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.topRight,
                    child: Text("قم بإعادة البريد الإلكتروني",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: HexColor(BottomBarcolor),
                            fontWeight: FontWeight.bold,
                            fontSize: 15)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(bottom: 15, left: 10, right: 10),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.rectangle,
                        borderRadius: new BorderRadius.circular(2.0),
                      ),
                      child: TextFormField(
                        controller: confirmemail,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          errorStyle: TextStyle(
                              color: HexColor(BottomBarcolor), height: 0),
                          icon: Icon(
                            Icons.email,
                            textDirection: TextDirection.rtl,
                          ),
                          hintText: '   Example@gmail.com',
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                          ),
                          hintTextDirection: TextDirection.rtl,
                          border: InputBorder.none,
                        ),
                        validator: (String value) {
                          if (value.isEmpty) {
                            return ' الرجاء تعبئة هذا الحقل';
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                              .hasMatch(value)) {
                            return 'الرجاء إدخال بريد صالح';
                          } else if (confirmemail.text != vemail.text) {
                            return "البريد الإلكتروني غير متطابق";
                          }
                          return null;
                        },
                        onSaved: (String value) {
                          email = value;
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: RaisedButton(
                      color: HexColor(BottomBarcolor),
                      onPressed: () {
                        if (_formkey.currentState.validate()) {
                          print("successful");

                          return;
                        } else {
                          print("UnSuccessfull");
                        }
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          side: BorderSide(color: Colors.blue, width: 2)),
                      textColor: Colors.white,
                      child: Text("تأكيد"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
