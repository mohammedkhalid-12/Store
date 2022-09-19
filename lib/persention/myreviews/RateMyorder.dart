import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/main.dart';

class RateMyOrderPage extends StatefulWidget {
  RateMyOrderPage({Key key}) : super(key: key);

  @override
  _RateMyOrderPageState createState() => _RateMyOrderPageState();
}

class _RateMyOrderPageState extends State<RateMyOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor(BackColor),
        appBar: AppBar(
          title: Text(
            "Rate MyOrder",
          ),
          backgroundColor: HexColor(BottomBarcolor),
        ),
        body: SingleChildScrollView(
          child:  Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                 padding: EdgeInsets.all(8),

                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.rectangle),
                  child: Column(
                    children: [
                      Text(
                        "  : الرجاء تقييم المتجر ",
                        style: TextStyle(
                            fontSize: 20, color: HexColor(BottomBarcolor)),
                      ),
                             SizedBox(height: 10,),

                                  TextFormField(
                                    scrollPadding: EdgeInsets.all(8),
                                    maxLength:70,
                                    maxLines:2,
                                    textDirection:TextDirection.rtl,
                 decoration: InputDecoration(
hintTextDirection:TextDirection.rtl,
                   hintText:  "أكتب تعليقك هنــا",
               
                 ),

                    ),
                                        SizedBox(height: 10,),

                      RatingBar.builder(
                        itemSize: 30,
                        initialRating: 2,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemBuilder: (context, _) => Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                    ],
                  )
                  ),
                  SizedBox(height: 10,),
                    Container(
padding: EdgeInsets.all(8),
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.rectangle),
                      child: Column(
                        children: [
                                            SizedBox(height: 17,),

                          Text(
                              " :  الرجاء تقييم  المنتج ",
                              style: TextStyle(
                                  fontSize: 20, color: HexColor(BottomBarcolor)),
                            ),
                                              SizedBox(height: 10,),

                                  TextFormField(
                                    scrollPadding: EdgeInsets.all(8),
                                    maxLength:70,
                                    textDirection:TextDirection.rtl,
                 decoration: InputDecoration(
hintTextDirection:TextDirection.rtl,
                   hintText:  "أكتب تعليقك هنــا",
               
                 ),
                    ),
                        ],
                      ),
                    ),
              
                                      SizedBox(height: 5,),

                                       TextButton(
                    onPressed: () { 


                     },
                  
                      child:
                      ElevatedButton(
  style: raisedButtonStyle,
  onPressed: () { 


 Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage()));
  },
  child:  Text(
                      "موافق",
                      style: TextStyle(color: Colors.white,fontSize: 18,
                      )), 
),
                      
                    ),
                  
            ],
          ),
          )
          )
        );
        
  }
}
final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    primary:HexColor(BottomBarcolor),

  onPrimary:HexColor(BottomBarcolor),
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    
    borderRadius: BorderRadius.all(Radius.circular(2)),
  ),
);