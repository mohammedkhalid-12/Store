
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage{
  //initi instans of sharedPrefrences
static SharedPreferences _sharedPreferences;
//make it as singleton to access for whole application

static LocalStorage _singleton = new  LocalStorage._internal();
factory LocalStorage()
{
  return _singleton;
}
//initi shared on main material app
LocalStorage._internal(){
// init veriable  

initializeSharedPrefrences();
}


 static Future<void >initializeSharedPrefrences() async{
  _sharedPreferences = await  SharedPreferences.getInstance();
}
//set data for storage 
static Future <bool> setItem(String key , String  value ){
  return _sharedPreferences.setString(key, value);

}

//get data from storage

static String getItem(String key){
return _sharedPreferences.getString(key);

}
}