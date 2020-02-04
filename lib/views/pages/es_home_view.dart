import 'package:Etqa_smile/viewmodels/es_home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:Etqa_smile/views/core/base_view.dart';

import '../../constants/route_paths.dart';
import '../shared/app_colors.dart';
import '../widgets/es_todo_widget.dart';

class ESHomeView extends StatefulWidget {
  @override
  _ESHomeViewState createState() => _ESHomeViewState();
}

class _ESHomeViewState extends State<ESHomeView> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ESHomeViewModel>(
        onModelReady: (model)=> model.getDefaultData(),
        //onErrorOccured:onEventOccured,
        builder: (context, model, child) =>  Scaffold(
          appBar: AppBar(title: Text(HomeAppBarTitle),),
          floatingActionButton: FloatingActionButton( 
            onPressed: () {},
            child: Icon(Icons.add),),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          backgroundColor: HomeBackgroundColor,
          body: SafeArea(
            child:  new ListView.builder
                (
                  itemCount: 5,
                  itemBuilder: (BuildContext ctxt, int index) => Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ESTodoWidget()
                  )
                ),
 
          ),


        )
      
    );
  }
}