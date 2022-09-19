/* import 'package:forsat/application/classes/Common/pagination.dart';
import 'package:forsat/application/classes/forum/question.dart';
import 'package:forsat/application/classes/forum/questions.dart';
import 'package:forsat/application/repositories/froum.dart';
import 'package:forsat/utils/helper.dart';

class FourmState{
  final ForumRepository _forumRepository;
  FourmState(this._forumRepository);

  List<Question> _questions =[];
  List<Question> get questions=> _questions;
  Pagination _pagination;
bool _loading =false;
bool get loading => _loading;
  
Future  getAllRepository()async{
if(Helper.paginationFetchNext(this._pagination).fetchNext){
  _loading =true;
Questions _newQuestions =await _forumRepository.getAllQuestions(Helper.paginationFetchNext(this._pagination).curentPage);

_questions.addAll(_newQuestions.questions);
_pagination=_newQuestions.pagination;
_loading=false;

}
}
} */