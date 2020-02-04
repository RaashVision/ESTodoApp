import 'package:Etqa_smile/viewmodels/es_todo_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:Etqa_smile/views/core/base_view.dart';

class ESTodoWidget extends StatefulWidget {

  double height;

  ESTodoWidget({this.height= 40})

  @override
  _ESTodoWidgetState createState() => _ESTodoWidgetState();
}

class _ESTodoWidgetState extends State<ESTodoWidget> {
  @override
  Widget build(BuildContext context) {
    return BaseView<ESTodoViewModel>(
        onModelReady: (model)=> model.getDefaultData(),
        //onErrorOccured:onEventOccured,
        builder: (context, model, child) =>  
        Container(
            height: widget.height,  
            child: Column(
              
            ),



        )
      
    );
  }
}