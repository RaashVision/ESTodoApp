// import 'package:flutter/material.dart';
// import 'package:Etqa_smile/views/pages/rv_request_view.dart';
// import 'package:Etqa_smile/views/shared/app_colors.dart';
// import 'package:Etqa_smile/views/widgets/rv_requesttype_widget.dart';

// class HomeView extends StatefulWidget {
//   @override
//   _HomeViewState createState() => _HomeViewState();
// }

// class _HomeViewState extends State<HomeView> {

//   int currentTabIndex = 0;
//   List<Widget> tabs = [
//     //RequestTypeWidget(),
//     RequestView(),
//     Container(color:Colors.red),
   
//   ];
//   onTapped(int index) {
//     setState(() {
//       currentTabIndex = index;
//     });
//   }

// bool click = true;
// ScrollController _scrollViewController;

//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(
//     body:  DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         // appBar:
        
//         // //  PreferredSize(
//         // //   preferredSize: Size(0,20),
//         // //   child: Container(color: PrimaryColor,),
//         // // ),
        
//         //  AppBar(
//         //     elevation: 0.0,
//         //     centerTitle: true,
//         //     leading: IconButton(icon: Icon(Icons.menu), onPressed: ()=>{

//         //       setState(() => click = click? false : true)


//         //     },), 
//         //     title: Text('POST',style: TextStyle(fontSize: 16.0),),
//         //     actions: <Widget>[
//         //       Padding(
//         //         padding: const EdgeInsets.only(right: 16.0),
//         //         child: Icon(Icons.more_vert),
//         //       ),
//         //     ],
//         //   ),
//           body:

//         CustomScrollView(
//         slivers: <Widget>[
//            SliverAppBar(
//                   pinned: true,
//                   //expandedHeight: 50,
//                   primary: true,
//                   forceElevated: true,
//                   flexibleSpace: FlexibleSpaceBar(
//                     titlePadding: EdgeInsets.only(bottom: 62),
//                     title: Text('dsds'),
//                     centerTitle: true,
//                     background: Padding(
//                             padding: const EdgeInsets.only(bottom: 46),
//                             child: Container(
//                               color: Colors.black,
//                             ),
//                           )
                      
//                   ),
//                   bottom: TabBar(
                    
//                     tabs: [
//                       Tab(text: "Tab1"),
//                       Tab(text: "Tab2"),
//                       Tab(text: "Tab3"),
//                       Tab(text: "Tab4"),
//                     ],
//                   ),
//                 ),
           
//           SliverList(
//             delegate: SliverChildListDelegate([
                
//               ListTile(leading: Icon(Icons.volume_off), title: Text("Volume Off"),),
//               ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
//               ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
//               ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
//               ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
//               ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
//               ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
//               ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
//               ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
//               ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
//               ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
//               ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
//               ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
//               ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
//               ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
//               ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
//               ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
//               ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
//               ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
//               ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
//               ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
//               ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
//               ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
//               ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
//               ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),

//             ]),
//           ),
           
          
          
          
          
          
//           ]),
          


          
          
          
          
//           //  Column(
//           //   mainAxisSize: MainAxisSize.max,
//           //   crossAxisAlignment: CrossAxisAlignment.stretch,
//           //   children: <Widget>[
//           //     Flexible(child: Container(child: RequestTypeWidget()),flex: 1),
//           //     Expanded(child: tabs[currentTabIndex],flex: 9,),
//           //   ],
//           // ),










//           bottomNavigationBar: Visibility(
//             maintainSize: false, 
//             maintainAnimation: true,
//             maintainState: true,
//             visible: true, 
           
//                       child: BottomNavigationBar(
//                         type: BottomNavigationBarType.fixed,
//             onTap: onTapped,
//             currentIndex: currentTabIndex,
            
//             items: [
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.home),
//                 title: Text("Request"),
//               ),
//               BottomNavigationBarItem(
//                 icon: Icon(Icons.mail),
//                 title: Text("Response"),
//               ),
             
//             ],
//         ),
//           ),
          
//           ),
//     ),
//     drawer: Drawer(),
//   );
//   }
// }