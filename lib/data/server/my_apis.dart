import 'package:flutter/cupertino.dart';

//this image load from my github fake apis
Future<List<Image>> loadSliderImageProvider() async {
  List<String> _myPics = [
    'https://raw.githubusercontent.com/mes71/fakeApi/master/Cup_Coffee/assets/images/cappo_01.png',
    'https://raw.githubusercontent.com/mes71/fakeApi/master/Cup_Coffee/assets/images/cappo_02.png',
    'https://raw.githubusercontent.com/mes71/fakeApi/master/Cup_Coffee/assets/images/latte_01.png',
    'https://raw.githubusercontent.com/mes71/fakeApi/master/Cup_Coffee/assets/images/latte_02.png',
    'https://raw.githubusercontent.com/mes71/fakeApi/master/Cup_Coffee/assets/images/americano_01.png',
    'https://raw.githubusercontent.com/mes71/fakeApi/master/Cup_Coffee/assets/images/americano_02.png',
  ];
  List<Image> resList = [];

  for (var item in _myPics) {
    resList.add(Image.network(
      item,
    ));
  }

  return resList;
}
