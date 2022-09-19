import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:store/application/state/opportunity_state.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/NotFound.dart';
import 'package:store/persention/PreviewItemsStore/StorsProducts.dart';
import 'package:store/persention/ReviewStore/ReviewStore.dart';
import 'package:store/value/Images.dart';
import 'package:store/widgets/ReviewsStoreUserCard.dart';

class ListCard extends StatefulWidget {
  ListCard({Key key}) : super(key: key);

  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
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
    /// store page///
    ///
    ///
    ///
    ///
    ///
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 10),
        controller: _scrollController,
        child: StateBuilder<OpportunityState>(
          observe: () => _oppurtunitiesPageStateRm,
          builder: (_, model) {
            return Column(children: <Widget>[
              ...model.state.opportunities.map(
                (Opportunity) => GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StoreProduct()));
                    },
                    child: Container(
                        color: HexColor(BackColor),
                        height: MediaQuery.of(context).size.height / 4.5,
                        width: MediaQuery.of(context).size.width / 1,
                        child: Card(
                          margin: EdgeInsets.fromLTRB(3.4, 7, 3.5, 5),
                          elevation: 1,
                          shadowColor:HexColor(BackColor),
                          color: Colors.white,
                          child: Container(
                            child: Column(children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 0, 45),
                                              width: 35.0,
                                              height: 45.0,
                                              child: IconButton(
                                                icon: Image.asset(
                                                    Images.location, ),
                                                onPressed: () {},
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  0, 0, 90, 50),
                                              width: 35.0,
                                              height: 35.0,
                                              child:
                                                  Image.asset(Images.discounts),
                                            ),
                                            Container(
                                              padding: EdgeInsets.fromLTRB(
                                                  1, 0, 0, 26),
                                              child: Column(
                                                children: [
                                                  Text(
                                                    " Nike شركة",
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: HexColor(
                                                            BottomBarcolor)),
                                                  ),
                                                  Container(
                                                    width: 127,
                                                    child: Text(
                                                      "لجميع الملبوسات الرياضيـة ",
                                                      maxLines: 2,
                                                      style: TextStyle(
                                                          fontSize: 11,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: HexColor(
                                                              BottomBarcolor)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          child: TextButton(
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                RatingBar.builder(
                                                  itemSize: 30,
                                                  initialRating: 1,
                                                  minRating: 1,
                                                  direction: Axis.horizontal,
                                                  allowHalfRating: true,
                                                  itemCount: 1,
                                                  itemBuilder: (context, _) =>
                                                      Icon(
                                                    Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                  onRatingUpdate: (rating) {
                                                        Navigator.push(
                                                                    context,
                                                                    MaterialPageRoute(
                                                                        builder: (context) => ReviewsStore()));
                                                    print(rating);
                                                  },
                                                ),
                                                Text(
                                                  "4",
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: HexColor(
                                                          BottomBarcolor)),
                                                ),
                                                SizedBox(
                                                  width: 55,
                                                ),
                                                Text(
                                                  "أقوى العروض والتخفيضات  ",
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color:
                                                        HexColor(BottomBarcolor),
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                  maxLines: 2,
                                                ),
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    Container(
                                      margin: EdgeInsets.fromLTRB(0, 06, 4, 0),
                                      width: 100.0,
                                      height: 100.0,
                                      decoration: BoxDecoration(
                                        border: Border.all(color: Colors.black),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.0)),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: Image.asset(
                                          Images.logo,
                                          height: 100.0,
                                          width: 100.0,
                                        ),
                                      ),
                                    ),
                                  ]),
                            ]),
                          ),
                        ))),
              )
            ]);
          },
        ),
      ),
    );
  }
}
