

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/application/router/pageRoutes.dart';
import 'package:store/application/router/route_constants.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/Drawable/createDrawerBodyItem.dart';
import 'package:store/persention/Drawable/my_drawer_header.dart';
import 'package:store/persention/Favorite/Favorite.dart';
import 'package:store/persention/MyOrders/MyOrder.dart';
import 'package:store/persention/MyPoint/Mypoint.dart';
import 'package:store/persention/Notification/Notification.dart';
import 'package:store/persention/PrivacyPolicy/privacy_policy.dart';
import 'package:store/persention/SendFeedback/send_feedback.dart';
import 'package:store/persention/Settings/settings.dart';
import 'package:store/persention/myreviews/MyReviews.dart';

class navigationDrawer extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
  return Drawer(
     child: ListView(
       padding: EdgeInsets.zero,
       children: <Widget>[
         MyHeaderDrawer(),

     
         createDrawerBodyItem(
           icon: Icons.home,
           text: 'Dashboard',
           onTap: () =>
               Navigator.pushReplacementNamed(context, pageRoutes.home),
         ),  createDrawerBodyItem(
           icon: Icons.dashboard_outlined,
           text: 'MyOrder',
           onTap: () =>
               Navigator.pushNamed(context, MyOrderPage.routeName),
         ),
    
           createDrawerBodyItem(
           icon: Icons.favorite,
           text: 'Favorite',
           onTap: () =>
               Navigator.pushNamed(context, FavoritePage.routeName),
         ),
           createDrawerBodyItem(
           icon: Icons.category_rounded,
           text: 'MyPoint',
           onTap: () =>
               Navigator.pushNamed(context, MypointPage.routeName),
         ),
                  Divider(color: HexColor(BottomBarcolor), height: 6,thickness:3),

           createDrawerBodyItem(
           icon: Icons.reviews,
           text: 'MyReviews',
           onTap: () =>
               Navigator.pushNamed(context, MyReviewsPage.routeName),
         ),
         createDrawerBodyItem(
           icon: Icons.settings_outlined,
           text: 'Settings',
           onTap: () =>
               Navigator.pushNamed(context,  SettingsPage.routeName),
         ),
              createDrawerBodyItem(
           icon: Icons.notifications_outlined,
           text: 'Notifications',
           onTap: () =>
               Navigator.pushNamed(context, NotificationPage.routeName),
         ),
              createDrawerBodyItem(
           icon: Icons.privacy_tip_outlined,
           text: 'Privacy policy',
           onTap: () =>
               Navigator.pushNamed(context, PrivacyPolicyPage.routeName),
         ),
                  Divider(color: HexColor(BottomBarcolor), height: 6,thickness:3),

              createDrawerBodyItem(
           icon: Icons.feedback_outlined,
           text: 'Send feedback',
           onTap: () =>
               Navigator.pushNamed(context,SendFeedbackPage.routeName),
         ),

         ListTile(
           title: Text('App version 1.0.0'),
           onTap: () {},
         ),
       ],
     ),
   );
 }
}