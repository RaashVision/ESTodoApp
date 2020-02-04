import 'package:flutter/material.dart';
import 'package:Etqa_smile/views/pages/rv_body_view.dart';
import 'package:Etqa_smile/views/shared/app_colors.dart';

class RequestView extends StatefulWidget {
  @override
  _RequestViewState createState() => _RequestViewState();
}

class _RequestViewState extends State<RequestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:  DefaultTabController(
      length: 6,
      child: Scaffold(
        //backgroundColor: Colors.blue,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),    
          child: Container(
            color: PrimaryColor,
            child: TabBar(    
                isScrollable:   true,
                unselectedLabelColor: Colors.white.withOpacity(0.3),
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                
                tabs: [
                  Tab(
                    child: Text('Params'),
                  ),
                  Tab(
                    child: Text('Authorization'),
                  ),
                  Tab(
                    child: Text('Headers'),
                  ),
                  Tab(
                    child: Text('Body'),
                  ),
                     Tab(
                    child: Text('Body'),
                  ),
                     Tab(
                    child: Text('Body'),
                  ),
   
                      ]),
          )
        ),
       body :TabBarView(
            children: <Widget>[
              BodyView(),
              Container(
                child: Center(
                  child: Text('Tab 2'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 3'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 4'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 3'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 4'),
                ),
              ),
            ],
          ),
      )
      
    ));
  }
}