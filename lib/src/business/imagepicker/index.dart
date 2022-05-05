import 'dart:io';

import 'package:image_picker/image_picker.dart';

// # 图片选择库 (ANDROID IOS WEB)
// image_picker: ^0.8.4+1

enum JSImagePickerSource {
  gallery,
  camera,
}

class JSImagePicker {
  // static final SMImagePicker _singleton = SMImagePicker._();
  // static SMImagePicker get instance => _singleton;
  // SMImagePicker._();
  //
  // final ImagePicker _picker = ImagePicker();

  /*
   * @description:    选择单张图片
   * @param:
   * @return:
   * @author:         jay xie
   * @time:           3/10/22 11:19 PM
   */
  static Future<XFile?> pickImage({JSImagePickerSource? source}) async {
    if (Platform.isMacOS || Platform.isWindows) return null;
    final XFile? image = await ImagePicker().pickImage(source: _getImageSource(source: source ?? JSImagePickerSource.gallery));
    return image;
  }

  /*
   * @description:    选择多张图片
   * @param:
   * @return:
   * @author:         jay xie
   * @time:           3/10/22 11:19 PM
   */
  static Future<List<XFile>?> pickMultiImage({JSImagePickerSource? source}) async {
    if (Platform.isMacOS || Platform.isWindows) return null;
    final List<XFile>? images = await ImagePicker().pickMultiImage(imageQuality: 2);
    return images;
  }

  /*
   * @description:    选择单张图片
   * @param:
   * @return:
   * @author:         jay xie
   * @time:           3/10/22 11:19 PM
   */
  static Future<XFile?> pickerVideo({JSImagePickerSource? source}) async {
    if (Platform.isMacOS || Platform.isWindows) return null;
    final XFile? image = await ImagePicker().pickVideo(
      source: _getImageSource(source: source ?? JSImagePickerSource.gallery),
      maxDuration: Duration(seconds: 10),
    );
    return image;
  }

  static ImageSource _getImageSource({required JSImagePickerSource source}) {
    switch (source) {
      case JSImagePickerSource.gallery:
        return ImageSource.gallery;
      case JSImagePickerSource.camera:
        return ImageSource.camera;
      default:
        return ImageSource.gallery;
    }
  }
}
