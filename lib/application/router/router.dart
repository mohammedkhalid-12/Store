


import 'package:flutter/material.dart';
import 'package:store/application/router/route_constants.dart';
import 'package:store/persention/NotFound.dart';
import 'package:store/persention/PreviewItemsStore/StorsProducts.dart';

class RouterModel {

   static  Route <dynamic>  onGenerateRoute(RouteSettings routeSettings){

switch(routeSettings.name){

case opportunities_route:
return MaterialPageRoute(builder: (_) => StoreProduct() );


case opportunitiesDetails_route:
return MaterialPageRoute( settings: routeSettings,  builder: (_) => NotFoundPage() );
case signUp_route:
return  MaterialPageRoute(builder: (_)=> NotFoundPage());
case  signIn_route:
return MaterialPageRoute(builder: (_) => NotFoundPage());
case home_route:
return MaterialPageRoute(builder: (_) => NotFoundPage());



default: 

return MaterialPageRoute(builder: (_) => NotFoundPage() );


}

  }
}