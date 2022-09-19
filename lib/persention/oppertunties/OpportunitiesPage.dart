





import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:store/application/router/route_constants.dart';
import 'package:store/application/state/opportunity_state.dart';
import 'package:store/value/Images.dart';
import 'package:store/widgets/opportunity_links_widget.dart';
class OppurtunitiesPage extends StatefulWidget {
  OppurtunitiesPage({Key key}) : super(key: key);

  @override
  _OppurtunitiesPageState createState() => _OppurtunitiesPageState();
}



class _OppurtunitiesPageState extends State<OppurtunitiesPage> {
  final _oppurtunitiesPageStateRm = Injector.getAsReactive<OpportunityState>();
  ScrollController _scrollController;
   @override
  void didChangeDependencies() {
    
   
    _scrollController =ScrollController();
    _getNewOpportinities();
    _scrollController.addListener(() {
      double maxScrollExtent =_scrollController.position.maxScrollExtent;
      double currentposition =_scrollController.position.pixels;
  //  print(_scrollController.position.maxScrollExtent);
    //  print(_scrollController.position.pixels);
    if(currentposition >= maxScrollExtent && !_oppurtunitiesPageStateRm.state.loading){
      _getNewOpportinities();
    }
    }
    );
        super.didChangeDependencies();

  
  }
   
  void _getNewOpportinities() {
    
        _oppurtunitiesPageStateRm.setState((OpportunityState) => OpportunityState.getAllRepository());
    // TODO: implement initState
    
  }
  @override
  Widget build(BuildContext context) {

    
return Scaffold(
appBar: AppBar(title: Text("HomePage"),
backgroundColor: Colors.green,),
body: SingleChildScrollView(
  controller: _scrollController,
  child: StateBuilder <OpportunityState>(
    observe:()=> _oppurtunitiesPageStateRm ,
    builder: (_, model){
return Column(
  
  children: <Widget>[
...model.state.opportunities.map((Opportunity) => GestureDetector(
  onTap: (){ Navigator.pushNamed(context, opportunitiesDetails_route, arguments: Opportunity);
  },
  child:   Column(
  children: <Widget>[
    
    Image.asset(Images.testImage),
    Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      child: Text("${Opportunity.title}"),
    ),

  Opportunitiy_link_Widget( deadline:  Opportunity.deadline, views: Opportunity.id.toString(),)
  
  
    ],
   ),
),
  
)
 
  
  ]
  );

    },
    ),
    ),

);

  }
}
