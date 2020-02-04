import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:Etqa_smile/views/pages/rv_request_view.dart';
import 'package:Etqa_smile/views/widgets/rv_requesttype_widget.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>  with SingleTickerProviderStateMixin /*<-- This is for the controllers*/ {
  TabController _tabController; // To control switching tabs
  ScrollController _scrollViewController; // To control scrolling

  List<String> items = [];
  List<Color> colors = [Colors.red, Colors.green, Colors.yellow, Colors.purple, Colors.blue, Colors.amber, Colors.cyan, Colors.pink];
  Random random = new Random();

  Color getRandomColor() {
    return colors.elementAt(random.nextInt(colors.length));
  }
  bool click = true;

  int currentTabIndex = 0;
  List<Widget> tabs = [
    //RequestTypeWidget(),
    RequestView(),
    Container(color:Colors.red),
   
  ];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _tabController =TabController(vsync: this, length: 2);
    _scrollViewController =ScrollController()..addListener(() {
       if(_scrollViewController.position.userScrollDirection == ScrollDirection.forward){

         if(click != false){
             setState(() {
              click = false;
           });
         }
          
       }else{
          if(click != true){
                setState(() {
              click = true;
          });
          }
        
       }

     
     
    });

    
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
    _scrollViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {

 // Init the items
    for (var i = 0; i < 100; i++) {
      items.add('Item $i');
    }

    return Scaffold(
          body: SafeArea(
        child: NestedScrollView(
          controller: _scrollViewController,
          headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                title: Text("WhatsApp using Flutter"),
                floating: true,
                pinned: true,
                snap: false,
                bottom: PreferredSize(
                  preferredSize: Size(0,110),

                    child:

                      Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(child: RequestTypeWidget(), height: 60,),
                        //tabs[currentTabIndex],

DefaultTabController(
      length: 6,
      child:
      TabBar(    
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
   
                      ]))



                        
                      ],
                    ),
                    
                    
                    
                    
                ),
              ),
            ];
          },
          body: 


         // tabs[currentTabIndex]
          
          TabBarView(
                controller: _tabController,
                children: <Widget>[
                  ListView.builder(
                    itemBuilder: (BuildContext context, int index) {
                        Color color = getRandomColor();
                        return Container(
                          height: 150.0,
                          color: color,
                          child: Text(
                            "Row $index",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        );
                      },
                      //physics: NeverScrollableScrollPhysics(), //This may come in handy if you have issues with scrolling in the future
                    ),

                    ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Material(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.blueGrey,
                            ),
                            title: Text(
                              items.elementAt(index)
                              ),
                          ),
                        );
                      },
                      //physics: NeverScrollableScrollPhysics(),
                    ),
                ],
              ),
        
        
        
        
        ),
      ),
         bottomNavigationBar: Visibility(
            maintainSize: false, 
            maintainAnimation: true,
            maintainState: true,
            visible: !click, 
           
                      child: BottomNavigationBar(
                        type: BottomNavigationBarType.fixed,
            onTap: onTapped,
            currentIndex: currentTabIndex,
            
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("Request"),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.mail),
                title: Text("Response"),
              ),
             
            ],
        ),
          ),
          
    drawer: Drawer(),
    );



  }

  
}