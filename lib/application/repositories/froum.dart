/* import 'package:dio/dio.dart';
import 'package:forsat/Presentation/oppertunties/opportunities.dart';
import 'package:forsat/application/classes/Common/pagination.dart';
import 'package:forsat/application/classes/Errors/CommonError.dart';
import 'package:forsat/application/classes/forum/question.dart';
import 'package:forsat/application/classes/forum/questions.dart';
import 'package:forsat/application/storage/localstorage.dart';
import 'package:forsat/application/storage/storage_keys.dart';

import '../forsat_api.dart';

abstract class ForumRepository{
  Future <Questions> getAllQuestions(int page);
}

class FourmRepositoryImpl implements ForumRepository{
  @override
  Future<Questions> getAllQuestions(int page) async {
   
try{
final response = await ForsatApi.dio.get("/api/questions?page=$page",
options: Options (
headers:{
  'Authorization' : "Bearer ${LocalStorage.getItem(TOKEN)}",
}),);
List _temp = response.data['data'];
var _meta = response.data['meta'];
Pagination pagination = Pagination.fromJson(_meta);

//print(_meta);
List<Question> _question =_temp.map((question) => Question.fromJson(question)).toList();
//print(response);
return 
 new
 Questions(pagination:pagination,questions: _question);

}on DioError catch(e){
throw showNetworkError(e);
}

  }

} */