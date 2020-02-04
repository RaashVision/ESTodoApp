import 'package:flutter/material.dart';
import 'package:Etqa_smile/views/shared/app_colors.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

class BodyView extends StatefulWidget {
  @override
  _BodyViewState createState() => _BodyViewState();
}

class _BodyViewState extends State<BodyView> {

  Map<int, Widget> _children = {
  0: Text('None'),
  1: Text('Form'),
  2: Text('UrlEncoded'),
  3: Text('Raw')
};

int _currentSelection = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
                  backgroundColor: PrimaryColor,
      onPressed: () {},
      child: Icon(Icons.add)),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(0,15,0,0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Flexible(child: MaterialSegmentedControl(
            children: _children,
            selectionIndex: _currentSelection,
            borderColor: Colors.grey,
            selectedColor: PrimaryColor,
            unselectedColor: Colors.white,
            borderRadius: 10.0,
            disabledChildren: [
              4,
            ],
            onSegmentChosen: (index) {
              setState(() {
                _currentSelection = index;
              });
            },
           )
            
            
            ,flex:2),
            Expanded(child: 
            
            Container()
            ,flex:8),
          ],
        ),
      ),
    );
  }
}