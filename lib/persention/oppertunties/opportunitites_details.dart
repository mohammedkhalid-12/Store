import 'package:flutter/material.dart';

import 'package:store/application/classes/opportunity/opportunity.dart';
import 'package:store/value/Images.dart';
import 'package:store/widgets/opportunity_links_widget.dart';

class Opportunity_Details extends StatefulWidget {
  Opportunity_Details({Key key}) : super(key: key);

  @override
  _Opportunity_DetailsState createState() => _Opportunity_DetailsState();
}

class _Opportunity_DetailsState extends State<Opportunity_Details> {
  @override
  Widget build(BuildContext context) {
    final Opportunity opportunity = ModalRoute.of(context).settings.arguments as Opportunity;
    return Scaffold(
body:  SingleChildScrollView(

child: Column(
  children:[
Image.asset(Images.testImage),
   Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Text("${opportunity.title}",style:  TextStyle(
        fontFamily: 'OrelegaOne',fontSize: 20, fontWeight: FontWeight.bold
        ),

    ),
   ),
     Opportunitiy_link_Widget(deadline:  opportunity.deadline, views: opportunity.id.toString(),),
     Container(child:Column(
crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         
         Text("Benifits",
         style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20,) ,),
SizedBox(height: 15, ),
Text("ApplicationProcess",
         style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20,) ,),
SizedBox(height: 15, ),

SizedBox(height: 15, ),
Text("Eligibilities",
         style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 20,) ,),
SizedBox(height: 15, ),

       ],
      
     ),

      
      )

  ],

),
),


    );
  }
}