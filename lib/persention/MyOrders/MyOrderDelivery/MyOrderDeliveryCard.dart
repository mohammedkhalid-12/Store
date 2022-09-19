import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:store/application/state/opportunity_state.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/MyOrders/ReOrder/ReOrderPage.dart';
import 'package:store/value/Images.dart';

class MyOrderDeliveryCard extends StatefulWidget {
  MyOrderDeliveryCard({Key key}) : super(key: key);

  @override
  _MyOrderShippedCardState createState() => _MyOrderShippedCardState();
}

class _MyOrderShippedCardState extends State<MyOrderDeliveryCard> {
  final _oppurtunitiesPageStateRm = Injector.getAsReactive<OpportunityState>();
  ScrollController _scrollController;
  @override
  void didChangeDependencies() {
    _scrollController = ScrollController();
    _getNewOpportinities();
    _scrollController.addListener(() {
      double maxScrollExtent = _scrollController.position.maxScrollExtent;
      double currentposition = _scrollController.position.pixels;
      //  print(_scrollController.position.maxScrollExtent);
      //  print(_scrollController.position.pixels);
      if (currentposition >= maxScrollExtent &&
          !_oppurtunitiesPageStateRm.state.loading) {
        //  _getNewOpportinities();
      }
    });
    super.didChangeDependencies();
  }

  void _getNewOpportinities() {
    _oppurtunitiesPageStateRm
        .setState((OpportunityState) => OpportunityState.getAllRepository());
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(15),
      controller: _scrollController,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: StateBuilder<OpportunityState>(
                observe: () => _oppurtunitiesPageStateRm,
                builder: (_, model) {
                  return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ...model.state.opportunities.map((Opportunity) =>
                            GestureDetector(
                                       onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ReOderPage()));
                  },
                                child: Card(
                              margin: EdgeInsets.only(
                                bottom: 16,
                              ),
                              elevation: 14,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        width: 100,
                                      ),
                                      
                                      Text(
                                        "129900994" + "  # " + ":رقم الطلب ",
                                        style: TextStyle(
                                            color: HexColor(BottomBarcolor),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 10,
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        "ريال ",
                                        maxLines: 4,
                                        style: TextStyle(
                                            color: HexColor(BottomBarcolor)),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      TextButton(
                                        child: Row(
                                          children: [
                                            Text(
                                              "1000000" + " :إجمالي المبلغ ",
                                              maxLines: 4,
                                              style: TextStyle(
                                                  color:
                                                      HexColor(BottomBarcolor),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Icon(
                                              Icons.attach_money_sharp,
                                              size: 20,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        " فضاء الإستشارية ",
                                        maxLines: 4,
                                        style: TextStyle(
                                            color: HexColor(BottomBarcolor),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        width: 4,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            " :اسم المحل  ",
                                            maxLines: 4,
                                            style: TextStyle(
                                                color: HexColor(BottomBarcolor),
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                           Icon(
                                              Icons.store,
                                              size: 20,
                                            )

                                        ],
                                      ),
                                    ],
                                  ),
                                                                                         SizedBox(height: 4,),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        " 02-20-2022 ",
                                        maxLines: 4,
                                        style: TextStyle(
                                            color: HexColor(BottomBarcolor),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        " :تاريخ العملية  ",
                                        maxLines: 4,
                                        style: TextStyle(
                                            color: HexColor(BottomBarcolor),
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                       Icon(
                                              Icons.calendar_today_sharp,
                                              size: 20,
                                            )
                                    ],
                                  ),
                                ],
                              ),
                            ))),
                      ]);
                }),
          ),
        ],
      ),
    );
  }
}
