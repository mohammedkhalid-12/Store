import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:store/application/state/opportunity_state.dart';
import 'package:store/const/color.dart';
import 'package:store/value/Images.dart';

class ReviewItems extends StatefulWidget {
  ReviewItems({Key key}) : super(key: key);

  @override
  _ReviewItemsState createState() => _ReviewItemsState();
}


class _ReviewItemsState extends State<ReviewItems> {
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
    return  SingleChildScrollView(
        padding: EdgeInsets.only(right: 16, left: 10, top: 12),
        
        controller: _scrollController,
        child: Column(
          children: [

            Container(
              margin: EdgeInsets.only(bottom: 30),
              padding:  EdgeInsets.only(bottom: 20),
              width: 437,
              child: StateBuilder<OpportunityState>(
                
                observe: () => _oppurtunitiesPageStateRm,
                builder: (_, model) {
                  return Column(
                    
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                    ...model.state.opportunities.map(
                      (Opportunity) => GestureDetector(
                        
                        child:  Card(
    margin: EdgeInsets.only(bottom: 16),
    elevation: 14,
                        color: Colors.white,
                        child: Column(
                          
                          children: [
                            SizedBox(height: 10,),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 170,
                                ),
                                Text(
                                  "محمدخالد محمدعثمان",
                                  style: TextStyle(color: HexColor(BottomBarcolor)),
                                ),
                                SizedBox(width: 7,height: 60,),
                                Container(
                                    child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    Images.user,
                                    height: 30.0,
                                    width: 30.0,
                                  ),
                                )),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    child: RatingBar.builder(
                                  itemSize: 10,
                                  initialRating: 4,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemBuilder: (context, _) => Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  },
                                )),
                                Text(
                                  " يعطيك العافية منتج جميل ومفيد أنصح الجمييع  ",maxLines: 1,
                                  style: TextStyle(color: HexColor(BottomBarcolor)),
                                ),
                             
                              ],
                            ),
                          ],
                        ),
                      )
                      
                      )
                      ),
                  ]
                  );
                }
                )
                ,
            ),

          ],
        ),
        
        
    );
    

  }
}