import 'package:flutter/material.dart';
import 'package:Etqa_smile/views/shared/app_colors.dart';

class RequestTypeWidget extends StatefulWidget {
  @override
  _RequestTypeWidgetState createState() => _RequestTypeWidgetState();
}

class _RequestTypeWidgetState extends State<RequestTypeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Card(
          color: Colors.transparent,
          elevation: 2.0,
                  child: Container(
            
            color: Colors.transparent,
            height: 60,
            child: 
             Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[

                    Expanded(
                      child: Container(
                         decoration: BoxDecoration(
                          borderRadius:  BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft: Radius.circular(10.0)), color: Colors.orange),
                      )
                    ,flex: 2,),

                     Expanded(
                      child: Container(
                         decoration: BoxDecoration(
                          borderRadius:  BorderRadius.only(bottomRight: Radius.circular(20.0)), color: Colors.white),
                      )
                    ,flex: 8,)

                  ],
                )
              
            
          ),
        ),
      ),
    );
  }
}