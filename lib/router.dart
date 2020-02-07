import 'package:ESmile/models/es_todo_model.dart';
import 'package:ESmile/views/pages/es_addupdatetodo_view.dart';
import 'package:ESmile/views/pages/es_home_view.dart';
import 'package:flutter/material.dart';
import 'package:ESmile/constants/route_paths.dart' as routes;

//This is namvigation route of the app.
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.LoginRoute:
      return MaterialPageRoute(builder: (context) => ESHomeView());
    case routes.HomeRoute:
      //var userName = settings.arguments as String;
      return MaterialPageRoute(builder: (context) => ESHomeView());

    case routes.AddTodoRoute:{
        var data = settings.arguments as ESTodoModel;
    return  MaterialPageRoute(  builder: (context) => ESAddUpdateTodoView(esTodoModel: data,));
    //break;
    }
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No path for ${settings.name}'),
          ),
        ),
      );
  }
}