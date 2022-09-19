import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/ButtonBar/ButtonBar.dart';
import 'package:store/persention/MyOrders/MyOrderDHL/MyOrderDHLPage.dart';
import 'package:store/persention/MyOrders/MyOrderDelivery/MyOrderDeliveryPage.dart';
import 'package:store/persention/MyOrders/MyOrderShipped/MyOrdershipped.dart';
import 'package:store/persention/myreviews/MyItemsReview/MyItemsReview.dart';
import 'package:store/persention/myreviews/MyStoreReivew/MyStoreReview.dart';
import 'package:store/value/Images.dart';

class MyReviewsPage extends StatefulWidget {
      static const String routeName = '/myreview';

  MyReviewsPage({Key key}) : super(key: key);

  @override
  _NotfoundPageState createState() => _NotfoundPageState();
}

class _NotfoundPageState extends State<MyReviewsPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: HexColor(BackColor),
      debugShowCheckedModeBanner: false,
      title: 'MyOrder ',
      home: DefaultTabController(
        initialIndex:1,
        length: 2,
        child: Scaffold(
          appBar: AppBar(

   leading:IconButton(
  icon : Icon(Icons.arrow_back, size: 20,), 
  onPressed: () {    
    
               Navigator.of(context).pop();
 },
  ) ,
            title: Text('MyOrderReViews '),
            automaticallyImplyLeading: false,
            backgroundColor: HexColor(BottomBarcolor),
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: [
                  Tab(text: 'تقيم المنتجات',
                icon: Image.asset(Images.delivery,color: Colors.white,height: 20,)), 
                Tab(text: 'تقييم المتاجر', 
                icon: Image.asset(Images.store,color: Colors.white, height: 20,), 

), 
              ],
            ),
          ),
          body: TabBarView(
            children: [
                Container(child: MyItemsReview()),
                Container(child: MyStoreReview()),
            ],
          ),
        ),
      ),
    );
  }
}
