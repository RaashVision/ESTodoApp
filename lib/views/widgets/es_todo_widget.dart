import 'package:Etqa_smile/viewmodels/es_todo_viewmodel.dart';
import 'package:Etqa_smile/views/shared/style.dart';
import 'package:flutter/material.dart';
import 'package:Etqa_smile/views/core/base_view.dart';

import '../shared/app_colors.dart';

class ESTodoWidget extends StatefulWidget {

  double height;

  ESTodoWidget({this.height=160});

  @override
  _ESTodoWidgetState createState() => _ESTodoWidgetState();
}

class _ESTodoWidgetState extends State<ESTodoWidget> {

  bool timeDilation = false;
  
  @override
  Widget build(BuildContext context) {
    return BaseView<ESTodoViewModel>(
        onModelReady: (model)=> model.getDefaultData(),
        //onErrorOccured:onEventOccured,
        builder: (context, model, child) =>  

            Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
                  border: Border.all(
                   // width: 3.0,
                    color: Colors.transparent
                  ),
                  borderRadius: BorderRadius.all(
                      Radius.circular(15.0) //         <--- border radius here
                  ),
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5.0,
                  ),]
                ),
              height: widget.height,  
              child: Material(
                color: Colors.white,
                borderRadius: BorderRadius.all( Radius.circular(15.0) ),
                              child: InkWell(
                                 onTap: () {
                                      print("ontapped");
                                
                                },
                                                              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15.0,8,15.0,0),
                        child: Container(color: Colors.transparent, child: Align(alignment: Alignment.centerLeft, child: SingleChildScrollView(scrollDirection: Axis.horizontal,child: Text("Automated Testing ScriptAutomated Testing ScriptAutomated Testing Script",style: TodoTilestyle,)))),
                      )                  
                    ,flex:4),
                    SizedBox(),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(15.0,0,15.0,0),
                        child: middleUi(),
                      )
                    ,flex: 3,),

                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0.0,0,0,0),
                        child: bottomUi(),
                      ),
                    flex:3)
                    


                  ],
                  
                ),
                              ),
              ),
          ),
      //  )
      
    );
  }


Widget middleUi(){

  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[

      Expanded(child: genericCol("Start Date","21 Oct 2019",CrossAxisAlignment.start),),
      Expanded(child: genericCol("End Date","21 Oct 2019",CrossAxisAlignment.center),),
      Expanded(child: genericCol("Time Left Date","21 Oct 2019",CrossAxisAlignment.end),)

    ],
  );



}
Widget genericCol(String title,String value,CrossAxisAlignment caligm){

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: caligm,
      children: <Widget>[

          Flexible(child: Text(title,textAlign: TextAlign.start,style: TodoDateTtilestyle,)),
          Expanded(child: Text(value,style: TodoDatestyle,textAlign: TextAlign.start,)),

      ],
    );

}

Widget bottomUi(){

  return Container(
     decoration: BoxDecoration(
                color: EQGreyColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)
                  
                  
                     //         <--- border radius here
                ),
              ),
    //color: Colors.grey[100],
    child: Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[

        Expanded(child: Padding(
          padding: const EdgeInsets.fromLTRB(15.0,0,15.0,0),
          child: statusWidget(),
        ),),
        //Expanded(child: statusWidget(),),
        Expanded(child: checkboxWidget(),)


      ],
    )

  );

}

Widget statusWidget(){

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[

        Text("Status :"),
        Text("InComplete")


      ],  

    );
}

Widget checkboxWidget(){

   return Row(
     mainAxisSize: MainAxisSize.min,
     mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Flexible(child: Text("Tick if Complete")),
            Checkbox(
              value: timeDilation,
              onChanged: (bool newValue) {

                
                setState(() {
                  timeDilation = newValue;

                });
               // onChanged(newValue);
              },
            ),
          ],
        );
    //);
}



}

