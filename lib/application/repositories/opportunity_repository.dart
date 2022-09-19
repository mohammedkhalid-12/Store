
import 'package:dio/dio.dart';
import 'package:store/application/classes/Common/pagination.dart';
import 'package:store/application/classes/Errors/CommonError.dart';
import 'package:store/application/classes/opportunity/opportunity.dart';
import 'package:store/application/forsat_api.dart';
import 'package:store/persention/oppertunties/opportunities.dart';

abstract class OpportunityRepository{

Future <Opportunitites> getAllRepository(int page);
  
}

class  OpportunityRepositoryImpl implements OpportunityRepository{
  @override
  Future<Opportunitites>  getAllRepository(int page) async{
    // TODO: implement getAllRepository

try{
final response = await ForsatApi.dio.get("/api/opportunity?page=$page",
options: Options (
headers:{
  'Authorization' : "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIzIiwianRpIjoiODEyNzc3OWI0NjM0YTMwYTQ3NmI5OTZmNWQ2OTMyZjNkMzM1MmExNmMwMmJmYTcxMDE0NmI1Njg4ZTFhNWFhYmEzMWVmMDIzZWVlOWE2ODkiLCJpYXQiOjE2NDMwNDEwNjUsIm5iZiI6MTY0MzA0MTA2NSwiZXhwIjoxNjc0NTc3MDY1LCJzdWIiOiIyMDEiLCJzY29wZXMiOltdfQ.wmhb9F0Hbp3CHDtb8CK7cq34uHr-rw6AtmPFEXRU-uNrVsv36EVRE72wr911CX9hB0lP37JyUoVR2VPMQkA4zUZYut_2cltZQ2FOjSWK5hPA_ktwQU5wxX0U4LKJJH00FDxpxcX5uBbJhnTevmxLikTybyPkeMwsF41QRJK684ygsiMfOon542UBUjCO-iKo93QtX4WGqphiTQAhn_7rF8Ip3AvAXTa0XMXuN0IYKbSzyADzxHA5u3X6YaBY-k9mZRr-eF5TZsWJc4bwA2hHc9R4qRUJEhdH2cyxyFHKhz4EQIaHdaTCvsq49gm4nYrC92zQFmm0vcLr2J_Df43MxHXc72FZCthYIpkjyiCL5E1SB3dijDs1Nis5_HicWikgTKmSYwvf2CXOpZIhiy5sQtZPfVtFCO61CDI2EblHGF2EG8xVX6XOmICVKKkPAQU77jCEkv8vMYCPx_pkJc_yAo79XDnmSGk55FVrGdoHiR2Y-j_qn37P4nlKyVxtojH7u49bQ5pOXGQiO-kYLUEC5av8LQgSA2TsuEhdx0FHNveeifo5t4Zb3kvzuENo7nInm9MuoOVA2SK5hP_-NA4xDeckb_wrAYeJYDSbFfMArG5X6_RZceyuJrZd25n46XnbOoW-1tTTA-qzNKK3kQh0nPZ8tfetmBvAazLgMr1tQuc",
}),);
List _temp = response.data['data'];
var _meta = response.data['meta'];
Pagination pagination = Pagination.fromJson(_meta);

//print(_meta);
List<Opportunity> _opportunities =_temp.map((opportunity) => Opportunity.fromJsonMap(opportunity)
).toList();
//print(response);
return  new Opportunitites(pagination:pagination,opportuniities: _opportunities);

}on DioError catch(e){
throw showNetworkError(e);
}

  }

}