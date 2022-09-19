import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/value/Images.dart';

class OnDhl extends StatefulWidget {
  OnDhl({Key  key}) : super(key: key);

  @override
  _OnDhlState createState() => _OnDhlState();
}

class _OnDhlState extends State<OnDhl> {
  @override
  Widget build(BuildContext context) {
      int onDHL=1;
  bool secondShift=true;
      return Row(

      children: [
                SizedBox(width:10,),

        Text("PM 05:00 - PM 10:00 ",style:  TextStyle(color: secondShift !=false ? Colors.white: Colors.grey[600], fontWeight: FontWeight.bold, fontSize: 15),),
        Spacer(),
        TextButton(
               style: TextButton.styleFrom(
          
      primary: HexColor(BottomBarcolor),
      shadowColor: HexColor(BackColor) ,
 onSurface: HexColor(BottomBarcolor),
          side: BorderSide(color: HexColor(BottomBarcolor), width: 2),
          elevation: 0.8
                  ),
          onPressed: () { 
AlertDialog alert = AlertDialog(
  
    title: Text("  تفاصيل  الشحن", textDirection: TextDirection.rtl,),
    content: Text("قيمة الشحن هي ١٠٠ ريال لطلب الواحد"),
    actions: [
  
    ],
    
);
 showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );




           },
        child:
        
        Row(
          
          children: [

            Text("شحــن", 
            
                    style:  TextStyle(color:  onDHL!=0 ? Colors.white: Colors.grey[600], fontWeight: FontWeight.bold),),


            Image.asset(Images.shipped, width: 45, height: 30, color:  onDHL!=0 ? Colors.white: Colors.grey[600]),
          ],
        ) ,
        
        
        ),
      ],
    );
  }
}