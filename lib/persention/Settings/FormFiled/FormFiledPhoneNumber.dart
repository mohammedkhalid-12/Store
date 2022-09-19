import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';

class FormFiledPhoneNumber extends StatefulWidget {
  FormFiledPhoneNumber({Key key}) : super(key: key);

  @override
  _FormFiledPageState createState() => _FormFiledPageState();
}

class _FormFiledPageState extends State<FormFiledPhoneNumber> {
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
                              padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                              child: TextFormField(
                                readOnly: true,

                                textDirection:TextDirection.rtl,
                                  decoration: InputDecoration(
                                    
                                    hintTextDirection: TextDirection.rtl,
                                border: InputBorder.none,
                                hintText: "966553045846+",
                              )))),
                              SizedBox(height:30),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                               shape:BoxShape.rectangle,
               borderRadius: new BorderRadius.circular(2.0),
                        
                
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(left: 15, right: 15, top: 5),
                              child: TextFormField(
                                
         keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
    FilteringTextInputFormatter.digitsOnly
],
                                textDirection:TextDirection.rtl,
                                  decoration: InputDecoration(
                                    
                                    hintTextDirection: TextDirection.rtl,
                                border: InputBorder.none,
                                hintText: 'أكتب الرقم  هنا..',
                              )))),
                    ],
                  )),
                                         SizedBox(height:20),

              Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 50,
                    width: 100,
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