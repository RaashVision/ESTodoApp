import 'package:Etqa_smile/models/channel_message_model.dart';
import 'package:Etqa_smile/models/direct_message_model.dart';

abstract class IMockData{


  Future<List<ChannelModel>>getHomeDrawerListData();

  Future<List<DirectMessageModel>>getDirectMessageListData();
}
