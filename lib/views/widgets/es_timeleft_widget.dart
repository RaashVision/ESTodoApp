import 'package:ESmile/models/es_todo_model.dart';
import 'package:ESmile/viewmodels/es_timeleft_viewmodel.dart';
import 'package:ESmile/views/core/base_view.dart';
import 'package:ESmile/views/shared/style.dart';
import 'package:flutter/material.dart';

/*
This is the widget for TimeLeft in HomePage,
Reason it separate because it required to refresh every minutes.
due to the timer. Refresh the whole UI for every minute for this small change is expensive (term of resource)
so make it separate so that only it will be refresh not the whole app

 */



class ESTimeLeft extends StatelessWidget {

  ESTodoModel esTodoModel;

  ESTimeLeft({this.esTodoModel});

  @override
  Widget build(BuildContext context) {


    final stream_ = Stream.periodic(Duration(minutes: 1), (i) => i);



    return BaseView<ESTimeLeftViewModel>(
         builder: (context, model, child) => 

           StreamBuilder(
            stream:stream_,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
             
             String timeleft;

             if(!esTodoModel.isCompleted)
              //Logic to handle the timer is in viewmodel
                 timeleft = model.timeleftLogic(esTodoModel);
              else{
                timeleft = "Done";
              }
              

              return  Text(timeleft??"Calculating",style: TodoDatestyle,textAlign: TextAlign.start,);
            })






        
      
    );
  }
}