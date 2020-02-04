import 'package:Etqa_smile/interfaces/i_flashlight.dart';
import 'package:Etqa_smile/interfaces/i_imagepicker.dart';
import 'package:Etqa_smile/interfaces/i_vibration.dart';
import 'package:Etqa_smile/locator.dart';

class Services {

   IVibration i_vibrate = locator<IVibration>();
   IFlashLight i_flashlight = locator<IFlashLight>();
   IImagePicker i_imagepicker = locator<IImagePicker>();
}