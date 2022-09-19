import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/value/Images.dart';

class OnDlivery extends StatefulWidget {
  OnDlivery({Key key}) : super(key: key);

  @override
  _StoreServiceState createState() => _StoreServiceState();
}

class _StoreServiceState extends State<OnDlivery> {
     int ondeliver=1;

  bool secondShift=false;
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        SizedBox(width:10,),
        Text("AM 08: 30 - PM 04:00 ",
        style:  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
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

  
                                  title: Text("  تفاصيل  التوصيل", textDirection: TextDirection.rtl,),
                                  content: Text("قيمة التوصيل هي ١٠٠ ريال لطلب الواحد"),
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

            Text("توصيــل", style: 
 TextStyle(

          color:  ondeliver!=0 ?   Colors.white : Colors.grey[600] , fontWeight: FontWeight.bold),            ),

            Image.asset(Images.delivery, width: 40,  color : ondeliver!=0 ?   Colors.white : Colors.grey[600] ),
          ],
        ) ,
        
        
        ),
      ],
    );
  }
}