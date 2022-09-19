
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/value/Images.dart';

class HomePageStore extends StatefulWidget {
  HomePageStore({Key key}) : super(key: key);

  @override
  _HomePageStoreState createState() => _HomePageStoreState();
}

class _HomePageStoreState extends State<HomePageStore> {
    final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       
      child: Row(children: [
       
      SizedBox(width: 2,),
 Container(
   margin: EdgeInsets.only(top: 3),
   height: 50,
    decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: StadiumBorder(
                    side: BorderSide(
                      width: 6,
                      color: HexColor(BackColor)
                    )
                  ),
               
      
    ),
 
  
 child:OutlinedButton(
  onPressed: () {},
  child: 
  
              Container(

                width: 35.0,
                height: 15.0,
                child:
  Image.asset(Images.filter),
              ),
  style: OutlinedButton.styleFrom(
    shape: StadiumBorder(),
  ),
 ),
 ),
  

      SizedBox(
    width:7,
    
  ),
   Expanded(
     
      
  child: 
  
  Container(

    decoration: ShapeDecoration(
    
                  color: Colors.white,
                  shape: StadiumBorder(
                  
                    side: BorderSide(
                    width: 0,
                   style: BorderStyle.none,
                      color: HexColor(BackColor)
                    )
                  ),
    ),
    child: Container(
      height: 38,
      width: 39,
      child: TextFormField(
        
        decoration: InputDecoration(
    border: InputBorder.none,
      icon: Icon(Icons.search
      ,color: HexColor(BackColor),
        ),
        hintText: "Search For Favorite"
        ,


        ),
        
      
      
  ),
    ),
      ),
    ),
    SizedBox(
    width: 1,
  ),
      
     //location  
     // 
       Container(
            height: 50,
            margin: EdgeInsets.only(top: 3),
    decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: StadiumBorder(
                    side: BorderSide(
                      width: 6,
                      color: HexColor(BackColor)
                    )
                  ),
               
      
    ),
 
  
 child:OutlinedButton(
  onPressed: () {},
  child: 
  
  
              Container(
 width: 35.0,
                height: 15.0,
                child:
  Image.asset(Images.location),
              ),
  style: OutlinedButton.styleFrom(
    shape: StadiumBorder(),
  ),
 ),
 ),
      
// end location
    
      ],

      ),
      

    );
  }
}