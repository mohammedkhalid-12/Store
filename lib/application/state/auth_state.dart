import 'package:flutter/material.dart';
import 'package:store/application/repositories/auth_repository.dart';

class AuthState{

final AuthRepository _authRepository;

  AuthState(this._authRepository): assert(_authRepository !=null);


Future signIn({

@required String email,
@required String password

})  async{
await _authRepository.signIn(email: email, password: password);
}


/*  */
Future signUp({

@required String email,
@required String password,
@required String passwordConfirmation,

@required String firstName,
@required String lastName, 

})  async{
await _authRepository.signUp(email: email, password: password, firstName: firstName, lastName: lastName, passwordConfirmation: passwordConfirmation);
}
}