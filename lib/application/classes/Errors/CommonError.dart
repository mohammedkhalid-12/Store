import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';


 class CommonError extends Error {
    String message;
  CommonError(
    
    {
      this.message
 
      }
    
    );
}

class OnErrorVoidMain{
  void main() {
  FlutterError.onError = (FlutterErrorDetails details) async {
    // Send to Zone handle
    Zone.current.handleUncaughtError(details.exception, details.stack);
  };
}
}
  CommonError showNetworkError(DioError networkError) {
  String message = "";

  if (networkError.response != null) {
    if (networkError.response.statusCode == 401) {
      message = networkError.response.data;
    } else if (networkError.response.statusCode == 422) {
      Map<String, dynamic> validationErrors =
          networkError.response.data["errors"];
      for (var err in validationErrors.values) {
        message += "\n$err";
      }
    } else {
      message = "An error is occured";
    }
  } else {
    message = "Can't reach to the server";
  }

 print("before throwing message is :   "+message);
Getmessage.messageText=message;

    return     CommonError(message: message);
}




  class Getmessage {
static String messageText;
 }
 