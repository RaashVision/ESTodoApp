import 'package:Etqa_smile/interfaces/i_mockdata.dart';
import 'package:Etqa_smile/interfaces/i_repository.dart';
import 'package:Etqa_smile/locator.dart';
import 'package:Etqa_smile/models/channel_message_model.dart';
import 'package:Etqa_smile/models/direct_message_model.dart';

class Repository implements IRepository{

    IMockData iMockData = locator<IMockData>();

  @override
  Future<List<ChannelModel>> getHomeData() {
   
    return iMockData.getHomeDrawerListData();
  }

  @override
  Future<List<DirectMessageModel>> getDirectMessageData() async{
    
    return iMockData.getDirectMessageListData();
  }




}

