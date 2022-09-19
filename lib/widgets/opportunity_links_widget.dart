
import 'package:flutter/material.dart';

class Opportunitiy_link_Widget extends StatelessWidget {
  const Opportunitiy_link_Widget(
    {Key key,
    @required this.categoryName, @required this.deadline,
    @required this.views
    
    }) : super(key: key);

final String categoryName;
final String views;
final String deadline;

  @override

  Widget build(BuildContext context) {
    TextStyle _iconTextSyple = TextStyle(
fontFamily: 'OrelegaOne',
fontSize: 11,
fontWeight: FontWeight.w500,
color: Colors.black26

    ); 
    double _icon=13;
    Color _iconColor =Colors.black26;
    return Container(
      child:   Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
   TextButton(
      onPressed: (){
  
      },
      child: Row(children:<Widget>[
    Icon(Icons.school, size: _icon,color: _iconColor,),
    
    SizedBox(width: 5, height: 5,
    ),
    Text("$categoryName" ,
    style:_iconTextSyple,)
    
    
      ]
      ),
    ),
    
    TextButton(
      
      onPressed: (){},
      child: Row(children:<Widget>[
      Icon(Icons.share, size: _icon,
      color: Colors.black26
      ,),
      
      SizedBox(width: 5, height: 5,
      ),
      Text("share",style:  _iconTextSyple,)
      
      
        ]
        ),
    ),
    TextButton(
         onPressed: (){},
         child: Row(children:<Widget>[
         Icon(Icons.remove_red_eye, size: _icon,color:_iconColor),
         
         SizedBox(width: 5, height: 5,
         ),
         Text("$views",style: _iconTextSyple,)
         
         
           ]
           ),
       ),
       TextButton(
         onPressed: (){},
         child: Row(children:<Widget>[
         Icon(Icons.event ,size:  _icon,color: _iconColor
         ,
       
         ),
         
         SizedBox(width: 3, height: 5,
         ),
         Text("$deadline",style: TextStyle(fontSize: 10,fontFamily: "OrelegaOne",color: Colors.grey), )
         
         
           ]
           ),
       ),
       
  ],
  
  ),
    );
  }
}