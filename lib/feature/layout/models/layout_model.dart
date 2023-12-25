import 'package:flutter/cupertino.dart';


import '../../../vision_detector_views/text_detector_view.dart';

class LayoutModel {
  final String name;
  final String image;
  final String dis;
  final Widget widget;

  LayoutModel({
    required this.name,
    required this.image,
    required this.dis,
    required this.widget,
  });
  static List<LayoutModel> models = [
    LayoutModel(
      name: 'Text Recognition',
      image: 'https://www.gstatic.com/mobilesdk/180427_mobilesdk/mlkit/text_recognition@2x.png',
      dis: 'Recognize and extract text from images',
      widget: TextRecognizerView(),
    ),

  ];
}
