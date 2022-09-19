/* import 'package:forsat/application/classes/Errors/CommonError.dart';
import 'package:forsat/application/state/auth_state.dart';
import 'package:forsat/application/storage/localstorage.dart';
import 'package:forsat/application/storage/storage_keys.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class SignInFormValidationModel{

  final AuthState _authState = Injector.get<AuthState>();
String email;
String password;

  bool get hasError => null;
/*  */
void setEmail(String email){
  //check the email validation
  if(!validEmail(email)){
    throw CommonError(message: "Invalid Email");
  }
this.email =email;
}


void setPassword(String password){
  //check the Passowrd validation
  if(password.length <6 ){
    throw CommonError(message: "must  Password  more than 6 digts" );
  
  }
this.password =password;
}

bool validEmail(String email){
  return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+"
).hasMatch(email);
}




bool validateData(){

  return this.email !=null&& this.password !=null && this.password.length > 6 && this.validEmail(this.email);

}

 Future <bool>submitSignIn() async {
   
      await _authState.signIn(email: this.email, password: this.password);


if(LocalStorage.getItem(StateLogin)=="200"){
return true;

}else 
{
  return false;
}
}
} */