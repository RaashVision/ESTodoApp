
import 'package:flutter/material.dart';
import 'package:Etqa_smile/managers/lifecycle_manager.dart';
import 'package:Etqa_smile/views/pages/home_camera_view.dart';
import 'package:Etqa_smile/views/pages/rv_home_view_v2.dart';
import 'package:Etqa_smile/views/shared/app_colors.dart';
import 'package:Etqa_smile/views/widgets/testtabsliverapp.dart';

import 'locator.dart';
import 'services/navigation_service.dart';
import 'views/pages/rv_home_view.dart';


void main() async {


  //Dependecy injectiion
  setupLocator();
  
    runApp(MyApp());
}

class MyApp extends StatelessWidget {

 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


   return LifeCycleManager(
      child: MaterialApp(     
        title: 'EQ_SMILE',
        navigatorKey: locator<NavigationService>().navigatorKey,
        theme: ThemeData(
          
          primaryColor: PrimaryColor,
        
      ),
         home:MyHomePage()
         
         
         
        
      ),
    );

  }
}
