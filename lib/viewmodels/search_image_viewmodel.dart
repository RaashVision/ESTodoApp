
import 'dart:io';
import 'dart:math';
import 'dart:ui';

import 'package:Etqa_smile/enums/viewstate.dart';
import 'package:Etqa_smile/interfaces/i_vibration.dart';
import 'package:Etqa_smile/locator.dart';
import 'package:Etqa_smile/models/image_tile_model.dart';

import 'core/base_viewmodel.dart';

class SearchImageViewModel extends BaseViewModel{

   List<ImageTileModel> list_imagetilemodel = [];

   void getDefaultData(String path) async{

     setState(viewState:ViewState.Busy);


     var imagebyte = File(path).readAsBytesSync();

     var lis_ofsizes = _createSizes(1000);

     for(var size in lis_ofsizes){

       list_imagetilemodel.add(new ImageTileModel(imagebyte,"Feature coming soon","google lens clone ui",size));

     }

     setState(viewState:ViewState.Idle);
     

   }

   List<Size> _createSizes(int count) {
  Random rnd = new Random();
  return new List.generate(count,
      (i) => new Size( (rnd.nextInt(500) + 200).toDouble(), rnd.nextInt(800) + 200.toDouble()));
}

}