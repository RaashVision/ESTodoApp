
import 'package:ESmile/managers/dialog_manager.dart';
import 'package:flutter/material.dart';
import 'package:ESmile/managers/lifecycle_manager.dart';
import 'package:ESmile/views/shared/app_colors.dart';
import 'package:flutter/services.dart';

import 'locator.dart';
import 'services/navigation_service.dart';
import 'package:ESmile/constants/route_paths.dart' as routes;
import 'package:ESmile/router.dart' as router;


void main() {

  WidgetsFlutterBinding.ensureInitialized();

  //Dependecy injectiion
  setupLocator();

  //This to lock the app in potrait mode. Only handle landscape 80%
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      runApp(new MyApp());
    });
}

class MyApp extends StatelessWidget {

  final GlobalKey _key = new GlobalKey();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


   return LifeCycleManager(
      child: MaterialApp(     
        title: 'ESMILE',
        navigatorKey: locator<NavigationService>().navigatorKey,
        onGenerateRoute: router.generateRoute,
        initialRoute: routes.HomeRoute,

         builder: (context, widget) => Navigator(
          onGenerateRoute: (settings) => MaterialPageRoute(
              builder: (context) => DialogManager(
                key: _key,
                child: widget,
              )),
        ),
        theme: ThemeData(
          primaryColor: PrimaryColor,
          floatingActionButtonTheme: FloatingActionButtonThemeData( backgroundColor: FloatingButtonPrimaryColor)
        
      ),
       
         
         
        
      ),
    );

  }
}
