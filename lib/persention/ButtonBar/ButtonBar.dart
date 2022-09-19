import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/main.dart';
import 'package:store/persention/Checkout/shopping_cart_page.dart';
import 'package:store/persention/Favorite/Favorite.dart';
import 'package:store/persention/HomePage/HomePageComponet/Content.dart';
import 'package:store/persention/NotFound.dart';
import 'package:store/persention/Notification/Notification.dart';
import 'package:store/persention/Profile/Profile.dart';

class ButtonBarPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
return    
  ConvexAppBar(
    cornerRadius:4.5,
 
    
    initialActiveIndex:0 ,
    
    activeColor: Colors.orange[100],
    style: TabStyle.fixedCircle,
    color: Colors.white,
     backgroundColor: HexColor(BottomBarcolor),
    items: [
      TabItem(icon: Icons.home, title:'Home'),
            TabItem(icon: Icons.person, title: 'Profile',),

      TabItem(icon: Icons.shopping_cart,) ,
      TabItem(icon: Icons.favorite, title: 'Favorite'),
            TabItem(icon: Icons.notifications_active, title: 'Notify'),

    ],
    onTap: (int i) {
        if(i==0){
   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage()));
        }
     else if(i==1){
   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ProfilePage()));
        }  else if(i==2){
   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => CartPage()));
        }
         else if(i==3){
   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => FavoritePage()));
        }
          else if(i==4){
   Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => NotificationPage()));
        }
    }

     
    ,
   
  
    );
  }
}
