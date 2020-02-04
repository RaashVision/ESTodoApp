import 'package:flutter/material.dart';
import 'package:Etqa_smile/views/pages/rv_request_view.dart';
import 'package:Etqa_smile/views/shared/app_colors.dart';
import 'package:Etqa_smile/views/widgets/rv_requesttype_widget.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

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

bool click = true;
ScrollController _scrollViewController;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
     _scrollViewController =ScrollController();
  }

  @override
  Widget build(BuildContext context) {
     return 
       Scaffold(

          body:SafeArea(
        child: NestedScrollView(
        controller: _scrollViewController,
        headerSliverBuilder: (BuildContext context, bool boxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              title: Text("WhatsApp using Flutter"),
              floating: true,
              pinned: true,
              snap: false,
              bottom: 
                PreferredSize(
                preferredSize: Size(0,120),
                child: Container(color: PrimaryColor,
                child: 
                 Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(child: RequestTypeWidget(),height: 60,),
             // Expanded(child: 
             tabs[currentTabIndex]
             //,flex: 9,),
            ],
          ),),
            ),
            ),
          ];
        },
         body: Container(color: Colors.red,), )),

        
          bottomNavigationBar: Visibility(
            maintainSize: false, 
            maintainAnimation: true,
            maintainState: true,
            visible: true, 
           
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
          
          );
   
   

  }
}