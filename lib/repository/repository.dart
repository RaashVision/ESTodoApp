import 'package:ESmile/enums/viewstate.dart';
import 'package:ESmile/interfaces/i_localdatabase.dart';
import 'package:ESmile/interfaces/i_repository.dart';
import 'package:ESmile/locator.dart';
import 'package:ESmile/managers/stream_manager.dart';
import 'package:ESmile/models/channel_message_model.dart';
import 'package:ESmile/models/direct_message_model.dart';
import 'package:ESmile/models/es_todo_model.dart';
import 'package:ESmile/models/result.dart';

class Repository implements IRepository{



    ILocalDatabase iLocalDb = locator<ILocalDatabase>();

    StreamManager iStream = locator<StreamManager>();



  @override
  Future<ResultAndStatus> deleteTodoRepo(ESTodoModel esTodoModel) async{
    try{

      var data =  await iLocalDb.deleteTodo(esTodoModel);

      //publish to all subcriber that db have change
      iStream.refreshWhenDbHaveChange().add(true);

      return ResultAndStatus(ViewState.Idle, null, data);
    }
    catch(e){
        return ResultAndStatus(ViewState.Error, e.toString(), null);
    }
  }

  @override
  Future<ResultAndStatus> deleteallRepo() async{
    try{
      var data =  await iLocalDb.deleteall();
      iStream.refreshWhenDbHaveChange().add(true);
      return ResultAndStatus(ViewState.Idle, null, data);
    }
    catch(e){
        return ResultAndStatus(ViewState.Error, e.toString(), null);
    }
  }

  @override
  Future<ResultAndStatus> insertTodoRepo(ESTodoModel esTodoModel) async{
    try{

      var data =  await iLocalDb.insertTodo(esTodoModel);
      iStream.refreshWhenDbHaveChange().add(true);
      return ResultAndStatus(ViewState.Idle, null, data);
    }
    catch(e){
        return ResultAndStatus(ViewState.Error, e.toString(), null);
    }
  }

  @override
  Future<ResultAndStatus> updateTodoRepo(ESTodoModel esTodoModel) async{
    try{

      var data =  await iLocalDb.updateTodo(esTodoModel);
      iStream.refreshWhenDbHaveChange().add(true);
      return ResultAndStatus(ViewState.Idle, null, data);
    }
    catch(e){
        return ResultAndStatus(ViewState.Error, e.toString(), null);
    }
  }

  @override
  Future<ResultAndStatus> getAllESTodoListRepo() async{
    try{

      var data =  await iLocalDb.getAllESTodoList();
      return ResultAndStatus(ViewState.Idle, null, data);
    }
    catch(e){
        return ResultAndStatus(ViewState.Error, e.toString(), null);
    }
  }




}

