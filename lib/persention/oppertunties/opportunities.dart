import 'package:flutter/cupertino.dart';
import 'package:store/application/classes/Common/pagination.dart';
import 'package:store/application/classes/opportunity/opportunity.dart';

class Opportunitites{
  @required final Pagination pagination;
 @required final  List <Opportunity>  opportuniities;

  Opportunitites({this.pagination, this.opportuniities});
}