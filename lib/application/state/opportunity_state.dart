
import 'package:store/application/classes/Common/pagination.dart';
import 'package:store/application/classes/opportunity/opportunity.dart';
import 'package:store/application/repositories/opportunity_repository.dart';
import 'package:store/persention/oppertunties/opportunities.dart';
import 'package:store/utils/helper.dart';

class  OpportunityState{
  final OpportunityRepository _opportunityRepostory;

  OpportunityState(this._opportunityRepostory);
List<Opportunity> _opportunities =[];
List<Opportunity> get opportunities => _opportunities;

Pagination _pagination;
bool _loading =false;
bool get loading => _loading;
Future  getAllRepository()async{

if(Helper.paginationFetchNext(this._pagination).fetchNext){



  _loading=true;
 Opportunitites _newOpportunities  = await _opportunityRepostory.getAllRepository(Helper.paginationFetchNext(this._pagination).curentPage);
  _opportunities.addAll(_newOpportunities.opportuniities);
  _pagination = _newOpportunities.pagination;
  _loading= false;
}
}
 

}