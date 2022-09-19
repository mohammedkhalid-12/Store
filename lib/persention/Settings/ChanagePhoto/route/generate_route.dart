import 'package:flutter/material.dart';
import 'package:store/persention/Settings/ChanagePhoto/route/route_names.dart';
import 'package:store/persention/Settings/ChanagePhoto/ui/edit_page.dart';
import 'package:store/persention/Settings/ChanagePhoto/ui/SelectPhoto.dart';
import 'package:store/persention/Settings/ChangeEmail/ChangeEmail.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case routeHome:
        return MaterialPageRoute(builder: (_) => ChanagePhotoPage());
        break;
      case routeEdit:
        return MaterialPageRoute(
            builder: (_) => EditPhotoPage(
                  image: settings.arguments,
                ));
        break;
    }
  }
}
