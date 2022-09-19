import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/ButtonBar/ButtonBar.dart';
import 'package:store/persention/Card/StoreItemsCard.dart';

import 'package:store/widgets/onDHLWidget.dart';
import 'package:store/widgets/onDeliver_widgets.dart';
import 'package:store/widgets/onStoreSerivceWiget.dart';

class StoreProduct extends StatefulWidget {
  StoreProduct({Key key}) : super(key: key);

  @override
  _StoreProductState createState() => _StoreProductState();
}

class _StoreProductState extends State<StoreProduct> {

  int ondeliver=0;
  int onStore=0;
  int onDHL=0;
  bool secondShift=false;
  @override
  Widget build(BuildContext context) {

 // items view for the store 





    return Scaffold( 
      backgroundColor: HexColor(BackColor),
    body
    : MaterialApp(
      
        debugShowCheckedModeBanner: false,
color: HexColor(BackColor ,
),
      home:Container(
        
color: HexColor(BottomBarcolor),
child:SafeArea(
        
        child: 
        Scaffold(
                backgroundColor: HexColor(BackColor),

appBar: PreferredSize(
  preferredSize: Size.fromHeight(23.0),
  child: 
    


AppBar(backgroundColor:HexColor(BottomBarcolor ,

),
    automaticallyImplyLeading: false, // hides leading widget

elevation: 0.0,
// title for store title
title: Text("Nike",style: GoogleFonts.roboto(
  fontWeight: FontWeight.bold,
  fontSize: 30,),
   ),

   leading:IconButton(
  icon : Icon(Icons.arrow_back, size: 20,), 
  onPressed: () {    
    
               Navigator.of(context).pop();
 },
  ) ,
  
   
   )
),
        body:
        Column(

          children: [
 Container(
    height: 150,
    
    color:HexColor(BottomBarcolor),
    width:  MediaQuery.of(context).size.width,
    child: Column(


       
        children: [

  

                      Expanded(
                              
                              child:  
                                   StoreService(),
                                   
                            ),
                            
                    Expanded(
                                      child:  
                                        OnDlivery(),
                                    ),
                    Expanded(
                                      child:  
                                  OnDhl(),

                                    ),
           Divider(
             height: 0,
                                color: Colors.white
         ),
          Container(
            color: HexColor(BackColor),
             height: 50,
     width:  MediaQuery.of(context).size.width,
      child: Row(
      children:[

           Expanded(
             child: IconButton(icon: Icon(Icons.checklist_rounded ),color: Colors.white,iconSize: 30, onPressed: () {  },
             ),
                       ),SizedBox(width: 15,),
             Expanded(child:   IconButton(icon: Icon(Icons.search ),color: Colors.white,iconSize: 30, onPressed: () {  },),
                       ),SizedBox(width: 15,),
                  Expanded(
                    child:   IconButton(icon: Icon(Icons.menu_sharp),color: Colors.white ,iconSize: 30, onPressed: () {  },)
                    ),
  ] 
  
   ),
                 ),
                                    
                       ],
        

        
         ),
    
               ),
                           
                               
                 Expanded(
                   
                   child:              
                ItemsCard(),
                 ),
                                  
                                
        ],
        ),
 
  bottomNavigationBar:  ButtonBarPage(),
        )
)
    )
    )
    );
  
    
  }
}