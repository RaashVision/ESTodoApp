import 'package:Etqa_smile/viewmodels/es_home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:Etqa_smile/views/core/base_view.dart';

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

          body: SafeArea(
            child: Text("")
          ),


        )
      
    );
  }
}