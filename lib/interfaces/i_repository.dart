import 'package:ESmile/models/channel_message_model.dart';
import 'package:ESmile/models/direct_message_model.dart';
import 'package:ESmile/models/es_todo_model.dart';
import 'package:ESmile/models/result.dart';

abstract class IRepository{

  Future<ResultAndStatus> insertTodoRepo(ESTodoModel esTodoModel);

  Future<ResultAndStatus> updateTodoRepo(ESTodoModel esTodoModel);

  Future<ResultAndStatus> getAllESTodoListRepo();

  Future<ResultAndStatus> deleteTodoRepo(ESTodoModel esTodoModel);

  Future<ResultAndStatus> deleteallRepo();
}