import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:store/application/state/opportunity_state.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/ItemDetails/ItemsDetailsPage.dart';
import 'package:store/persention/NotFound.dart';
import 'package:store/value/Images.dart';

class ItemsCard extends StatefulWidget {
  ItemsCard({Key key}) : super(key: key);

  @override
  _ItemsCardState createState() => _ItemsCardState();
}

class _ItemsCardState extends State<ItemsCard> {
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
        _getNewOpportinities();
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
    ///
    /// items for store
    ///
    ///
    ///

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HexColor(BackColor),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            shape: BoxShape.rectangle,
          ),
          child: GridView.count(
            mainAxisSpacing: 20,
            crossAxisSpacing: 23,
            padding: EdgeInsets.only(bottom: 10, right: 7, left: 8, top: 10),
            childAspectRatio: 3 / 4.0,
            // Create a grid with 2 columns. If you change the scrollDirection to
            // horizontal, this produces 2 rows.
            crossAxisCount: 2,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(100, (index) {
              return GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemsDetailPage()));
                  },
                  child:

                      //card for items with decoration
                      Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.0)),
                    child: Column(
                      children: [
                        Container(
                          height: 240,
                          width: 200,
                          padding: EdgeInsets.only(top: 20),
                          decoration: new BoxDecoration(
                            shape: BoxShape.rectangle,
                          ),
                          child: Column(
                            children: [
                              Stack(
                                  alignment: Alignment.topLeft,
                                  children: <Widget>[
                                    Container(
                                      width: 300,
                                      color: Colors.white,
                                      child: ClipRRect(
                                        child: Image.asset(
                                          Images.item,
                                          height: 100.0,
                                          width: 150.0,
                                        ),
                                      ),
                                    ),
                                    ClipRRect(
                                      borderRadius:
                                          new BorderRadius.circular(40.0),
                                      child: Image.asset(Images.panner,
                                          height: 40,
                                          width: 30,
                                          color: HexColor(BottomBarcolor)),
                                    ),
                                  ]),
                              Container(
                                padding: EdgeInsets.only(left: 3, right: 3),
                                decoration:
                                    BoxDecoration(color: Colors.grey[300]),
                                width: MediaQuery.of(context).size.width,
                                height: 120,
                                child: Column(
                                  children: [
                                    Text("T-shirt",
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: HexColor(BottomBarcolor),
                                        )),
                                    Text(
                                      "Test for Length Description    AC Milan T-shirts and so one and this test  blabla ",
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontSize: 10,
                                        wordSpacing: 1,
                                        fontWeight: FontWeight.bold,
                                        color: HexColor(BottomBarcolor),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        new RichText(
                                          textDirection: TextDirection.rtl,
                                          maxLines: 3,
                                          text: new TextSpan(
                                            children: <TextSpan>[
                                              new TextSpan(
                                                text: '\500.99 ريال ',
                                                style: new TextStyle(
                                                  color: Colors.black,
                                                  decoration: TextDecoration
                                                      .lineThrough,
                                                ),
                                              ),
                                              new TextSpan(
                                                text: ' \400.99 ريال ',
                                                style: new TextStyle(
                                                  wordSpacing: 3,
                                                  color: Colors.black,
                                                  //   decoration: TextDecoration.lineThrough,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 20,
                                      height: 10,
                                    ),
                                    Row(
                                      //row cart and favorit icon //
                                      children: [
                                        SizedBox(
                                          width: 20,
                                          height: 5,
                                        ),
                                        Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 14,
                                          shadowColor: HexColor(BackColor),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                          child: Container(
                                            height: 26,
                                            width: 40,
                                            child: IconButton(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.shopping_cart_rounded,
                                                color: HexColor(BottomBarcolor),
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Card(
                                          elevation: 14,
                                          shadowColor: HexColor(BackColor),
                                          clipBehavior: Clip.antiAlias,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30.0)),
                                          child: Container(
                                            height: 26,
                                            width: 40,
                                            child: IconButton(
                                              padding:
                                                  EdgeInsets.only(bottom: 5),
                                              onPressed: () {},
                                              icon: Icon(
                                                Icons.favorite,
                                                color: Colors.red,
                                                size: 24,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ));
            }),
          ),
        ),
      ),
    );
  }
}
