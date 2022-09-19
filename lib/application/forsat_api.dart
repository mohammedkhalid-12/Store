import 'package:dio/dio.dart';
import 'package:store/application/base_Url.dart';

class ForsatApi{
static BaseOptions _baseOptions = new BaseOptions(baseUrl:  BASE_URL);
static Dio dio = new Dio(_baseOptions);

static Dio dioAuth(){
  return Dio();
}
}