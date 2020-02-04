
import 'package:Etqa_smile/services/navigation_service.dart';
import 'package:get_it/get_it.dart';
import 'package:Etqa_smile/interfaces/i_imagepicker.dart';
import 'package:Etqa_smile/interfaces/i_mockdata.dart';
import 'package:Etqa_smile/interfaces/i_vibration.dart';
import 'package:Etqa_smile/repository/mock_data/mockservice.dart';
import 'package:Etqa_smile/repository/repository.dart';
import 'package:Etqa_smile/services/flashlight_services.dart';
import 'package:Etqa_smile/services/imagepicker_services.dart';
import 'package:Etqa_smile/services/services.dart';
import 'package:Etqa_smile/services/vibration_services.dart';
import 'package:Etqa_smile/utils/datetime_utils.dart';
import 'package:Etqa_smile/viewmodels/carousal_slider_viewmodel.dart';
import 'package:Etqa_smile/viewmodels/home_camera_viewmodel.dart';
import 'package:Etqa_smile/viewmodels/search_image_viewmodel.dart';

import 'interfaces/i_flashlight.dart';
import 'interfaces/i_repository.dart';

GetIt locator = GetIt.I;
void setupLocator() {
 
 locator.registerFactory(() =>  HomeCameraViewModel());

locator.registerFactory(() =>   CarousalSliderViewModel());

locator.registerFactory(()=>SearchImageViewModel());


 locator.registerLazySingleton<IMockData>(()=> new MockService());
 locator.registerLazySingleton<IRepository>(()=> new Repository());
 locator.registerSingleton(new DateTimeUtils());
 locator.registerLazySingleton<IVibration>(()=> new VibrationServices());
 locator.registerLazySingleton<IFlashLight>(()=> new FlashLightServices());
 locator.registerLazySingleton<IImagePicker>(()=> new ImagePickerServices());
 locator.registerSingleton(new Services());

 locator.registerLazySingleton(() => NavigationService());

  
}