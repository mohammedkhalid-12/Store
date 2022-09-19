// @dart=2.9

import 'package:flutter/material.dart';
import 'package:store/application/repositories/opportunity_repository.dart';
import 'package:store/application/router/pageRoutes.dart';
import 'package:store/application/router/route_constants.dart';
import 'package:store/application/state/opportunity_state.dart';
import 'package:store/persention/Checkout/invoice.dart';
import 'package:store/persention/Drawable/navigationDrawer.dart';
import 'package:store/persention/Favorite/Favorite.dart';
import 'package:store/persention/MyOrders/MyOrder.dart';
import 'package:store/persention/MyPoint/Mypoint.dart';
import 'package:store/persention/NotFound.dart';
import 'package:store/persention/Notification/Notification.dart';
import 'package:store/persention/PrivacyPolicy/privacy_policy.dart';
import 'package:store/persention/SendFeedback/send_feedback.dart';
import 'package:store/persention/Settings/settings.dart';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/ButtonBar/ButtonBar.dart';
import 'package:store/persention/carsoul/carsoul.dart';
import 'package:store/persention/contactus/contacts.dart';
import 'package:store/persention/myreviews/MyReviews.dart';

import 'persention/Drawable/my_drawer_header.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  static const String routeName = '/homePage';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Injector(
        inject: [
          Inject<OpportunityState>(
              () => OpportunityState(OpportunityRepositoryImpl())),
          Inject<OpportunityState>(
              () => OpportunityState(OpportunityRepositoryImpl()))
        ],
        builder: (context) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            routes: {
              pageRoutes.home: (context) => HomePage(),
              pageRoutes.favorite: (context) => FavoritePage(),
              pageRoutes.myorder: (context) => MyOrderPage(),
              pageRoutes.mypoint: (context) => MypointPage(),
              pageRoutes.myreview: (context) => MyReviewsPage(),
              pageRoutes.setting: (context) => SettingsPage(),
              pageRoutes.notification: (context) => NotificationPage(),
              pageRoutes.policy: (context) => PrivacyPolicyPage(),
              pageRoutes.send: (context) => SendFeedbackPage(),
              pageRoutes.Invoice: (context) => invoice(),
            },
            home: Container(
                color: HexColor(BottomBarcolor),
                child: SafeArea(
                    child: Scaffold(
                        backgroundColor: HexColor(BackColor),
                        appBar: AppBar(
                          toolbarHeight: 95,
                          backgroundColor: HexColor(BottomBarcolor),
                          title: TextButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Store",
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                    )),
                                Icon(
                                  Icons.shopping_bag_rounded,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ],
                            ),
                          ),
                          leading: Builder(
                            builder: (BuildContext context) {
                              return IconButton(
                                icon: const Icon(
                                  Icons.menu,
                                  size: 40,
                                ),
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                tooltip: MaterialLocalizations.of(context)
                                    .openAppDrawerTooltip,
                              );
                            },
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        body: Container(child: Carsoul()),
                        drawer: navigationDrawer(),
                        bottomNavigationBar: ButtonBarPage()))),
          );
        });
  }
}
