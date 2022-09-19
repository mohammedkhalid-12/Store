import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:store/application/classes/Errors/CommonError.dart';
import 'package:store/application/forsat_api.dart';

abstract class AuthRepository {
  Future signIn({
    @required String email,
    @required String password,
  });

  Future signUp({
    @required String firstName,
    @required String lastName,
    @required String email,
    @required String password,
    @required String passwordConfirmation,
  });
}

class AuthRepositoryImpl implements AuthRepository {
  @override
  Future signIn({
    String email,
    String password,
  }) async {
    try {
      var response = await ForsatApi.dio.post(
        "/api/auth/login",
        data: {"email": email, "password": password},
      );
String accessToken ,expiresAt,stateLogin;
                     stateLogin = response.data['state'];


if( stateLogin =="403"){
return CommonError(message: "m");

}



    

         expiresAt = response.data['expiresAt'];
                 stateLogin = response.data['state'];
       accessToken =  response.data['accessToken'] ;

      /* await LocalStorage.setItem(ExerperationToken, expiresAt);
      await LocalStorage.setItem(StateLogin, stateLogin.toString());
            await LocalStorage.setItem(TOKEN, accessToken);
 */

      print(response);

    } on DioError catch (e) {
      print(e);
      showNetworkError(e);
    } on Exception catch(e){
            showNetworkError(e);

    }
    
  }
  

  @override
  Future signUp({
    String firstName,
    String lastName,
    String email,
    String password,
    String passwordConfirmation,
  }) async {
    try {
      var response = await ForsatApi.dio.post(
        "/api/auth/register",
        data: {
          "firstName": firstName,
          "lastName": lastName,
          "email": email,
          "password": password,
          "password_confirmation": passwordConfirmation,
        },
      );
      print(response);
    } on DioError catch (e) {
      showNetworkError(e);
    }
  }
}
