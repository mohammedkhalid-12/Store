import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:store/application/state/opportunity_state.dart';
import 'package:store/const/color.dart';
import 'package:store/persention/Card/StoreCardview.dart';
import 'package:store/persention/Card/StoreItemsCard.dart';
import 'package:store/widgets/ReviewsItemsUserCard.dart';
import 'package:store/widgets/ReviewsStoreUserCard.dart';

class ReviewsStore extends StatefulWidget {
  ReviewsStore({Key key}) : super(key: key);

  @override
  _ReviewsStoreState createState() => _ReviewsStoreState();
}

class _ReviewsStoreState extends State<ReviewsStore> {
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
    return Scaffold(
      backgroundColor: HexColor(BackColor),
      appBar: AppBar(
        title: Text(
          " Store Reviews",
        ),
        backgroundColor: HexColor(BottomBarcolor),
      ),
      body:
    ReviewStoreUser()
            
         
      
     
     
    
     
    
    );
  }
}
