import 'dart:io';

import 'package:Etqa_smile/interfaces/i_imagepicker.dart';
import 'package:image_picker/image_picker.dart';


class ImagePickerServices implements IImagePicker {


  @override
  Future<File> pickerImageFromGallery() async {
    // TODO: implement pickerImageFromGallery
   return await ImagePicker.pickImage(source: ImageSource.gallery);
  }







}