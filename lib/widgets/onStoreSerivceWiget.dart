import 'package:flutter/material.dart';
import 'package:store/value/Images.dart';

class StoreService extends StatefulWidget {
  StoreService({Key key}) : super(key: key);

  @override
  _StoreServiceState createState() => _StoreServiceState();
}

class _StoreServiceState extends State<StoreService> {
 
  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        
SizedBox(width: 20,),
        Text("أوقات العمل",
        style:  TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold),
          
          
          ),
        Spacer(),
        TextButton(

          
          onPressed: () {  },
        child:
        
        Row(
          
          children: [

            Text("إســتلام" ,  
             style:  TextStyle(

          color:   Colors.white, fontWeight: FontWeight.bold),
      ),

            Image.asset(Images.store, width: 40, color:  Colors.white,),
          ],
        ) ,
        
        
        ),
      ],
    );
  }
}