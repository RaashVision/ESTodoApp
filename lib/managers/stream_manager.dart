import 'dart:async';

import 'package:ESmile/models/es_todo_model.dart';

class StreamManager{

  StreamController<bool> _dbOnChange = new StreamController.broadcast();

   StreamController<bool> _updatedata = new StreamController.broadcast();

  StreamController refreshWhenDbHaveChange(){

    return _dbOnChange;
  }

   StreamController updatethedata(){

    return _updatedata;
  }



}