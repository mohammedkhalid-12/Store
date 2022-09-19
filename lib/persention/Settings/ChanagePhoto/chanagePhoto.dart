import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store/persention/Settings/ChanagePhoto/bloc/photo_bloc.dart';
import 'package:store/persention/Settings/ChanagePhoto/route/generate_route.dart';
import 'package:store/persention/Settings/ChanagePhoto/route/route_names.dart';
class ChanagePhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => PhotoBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PhotoApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: routeHome,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
