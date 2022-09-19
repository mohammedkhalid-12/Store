import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';

class SendFeeedBack extends StatefulWidget {
  SendFeeedBack({Key key}) : super(key: key);

  @override
  State<SendFeeedBack> createState() => _SendFeeedBackState();
}

class _SendFeeedBackState extends State<SendFeeedBack> {
 Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    var _formKey;
    return Form(
          child: Column(
            key: _formKey,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                               shape:BoxShape.rectangle,
               borderRadius: new BorderRadius.circular(2.0),
                        
                
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(left: 15, right: 15, top: 5,),
                              child: TextFormField(
                                readOnly: true,

                                textDirection:TextDirection.rtl,
                                  decoration: InputDecoration(
                                    
                                    hintTextDirection: TextDirection.rtl,
                                border: InputBorder.none,
                                hintText: 'عدم التوصيل',
                              )))),
                              SizedBox(height:25),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                               shape:BoxShape.rectangle,
               borderRadius: new BorderRadius.circular(18.0),
                        
                
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                              child: TextFormField(

                                textDirection:TextDirection.rtl,
                                  decoration: InputDecoration(
                                    
                                    hintTextDirection: TextDirection.rtl,
                                border: InputBorder.none,
                                hintText: 'أوصف المشكلة :',
                              )))),
                    ],
                  )),
                                          SizedBox(height:25),

              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                      color:     HexColor(BottomBarcolor),
                      onPressed: () {
                        // Validate returns true if the form is valid, or false
                        // otherwise.
                         
                      },
                      child: Text(
                        'ارسال',
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(2.0),
                          side: BorderSide(color: 
                          HexColor(BottomBarcolor))),
                    ),
                  )),
            ],
          ),
        );
  }
}