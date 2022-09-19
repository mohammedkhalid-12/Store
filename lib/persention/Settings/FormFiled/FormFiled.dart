import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';

class FormFiledPage extends StatefulWidget {
  FormFiledPage({Key key}) : super(key: key);

  @override
  _FormFiledPageState createState() => _FormFiledPageState();
}

class _FormFiledPageState extends State<FormFiledPage> {
  @override
  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    var _formKey;
    return Form(
          child: Column(
            key: _formKey,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(right: 22,top: 10,left: 10),
                  child: Column(
                    children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                               shape:BoxShape.rectangle,
               borderRadius: new BorderRadius.circular(2.0),
                        
                
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(left: 15, right: 20, top: 5),
                              child: TextFormField(
                                readOnly: true,

                                textDirection:TextDirection.rtl,
                                  decoration: InputDecoration(
                                    
                                    hintTextDirection: TextDirection.rtl,
                                border: InputBorder.none,
                                hintText: '  محمدخالد محمد عثمان',
                              )))),
                              SizedBox(height:50),
                      Row(
                        children: [
                          Container(
                                                      width: 160,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                   shape:BoxShape.rectangle,
               borderRadius: new BorderRadius.circular(2.0),
                            
                
                              ),
                            
                              child: TextFormField(

                                textDirection:TextDirection.rtl,
                                  decoration: InputDecoration(
                                    
                                    hintTextDirection: TextDirection.rtl,
                                border: InputBorder.none,
                                hintText: ' الإسم  الثاني',
                              ))),
                                                                              SizedBox(width:20),

                                    Container(
width: 160,
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                   shape:BoxShape.rectangle,
               borderRadius: new BorderRadius.circular(2.0),
                            
                
                              ),
                            
                              child: TextFormField(

                                textDirection:TextDirection.rtl,
                                  decoration: InputDecoration(
                                    
                                    hintTextDirection: TextDirection.rtl,
                                border: InputBorder.none,
                                hintText: ' الإسم الأول',
                              ))),
                        ],
                      ),
                    ],
                  )),
                                                SizedBox(height:20),

       
              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    width:100,
                    child: RaisedButton(
                      color:     HexColor(BottomBarcolor),
                      onPressed: () {
                        // Validate returns true if the form is valid, or false
                        // otherwise.
                         
                      },
                      child: Text(
                        'حفظ',
                        style: TextStyle(color: Colors.white),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: 
                          HexColor(BottomBarcolor))),
                    ),
                  )),
            ],
          ),
        );
  }
}