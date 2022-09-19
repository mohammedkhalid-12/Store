
import 'package:store/application/classes/Common/pagination.dart';
import 'package:store/utils/pagination_fetch_Next.dart';

class Helper{

  static PaginationFeatchNext  paginationFetchNext(Pagination _pagination){
    int curentPage =1;
bool fetchNext=false;
if(_pagination ==null){
  fetchNext=true;
}else if(_pagination!=null && _pagination.current_page< _pagination.last_page){
  curentPage =_pagination.current_page+1;
  fetchNext =true;
}else{
fetchNext= false;

}
if(fetchNext){
return new PaginationFeatchNext(curentPage, fetchNext);
  }
}
}