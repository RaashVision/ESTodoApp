
import 'package:flutter/foundation.dart';
import 'package:Etqa_smile/enums/viewstate.dart';
import 'package:Etqa_smile/interfaces/i_vibration.dart';
import 'package:Etqa_smile/locator.dart';

import 'core/base_viewmodel.dart';

class HomeCameraViewModel extends BaseViewModel{


   

   void getDefaultData() async{

     setState(viewState: ViewState.Busy);
     debugPrint(state.toString());

     Future.delayed(const Duration(milliseconds: 15000), () {

       //setState(viewState: ViewState.Error,event:"lOVE");

        setState(viewState: ViewState.NoInternet);



      });


   }

}