import 'package:fidibo_test/data/server/my_apis.dart';
import 'package:flutter/material.dart';

abstract class IPicDataSource {
  Future<List<Image>> getAllPicsDataSource();
}

//for provide image form internet
class PicDataSource extends IPicDataSource {
  @override
  Future<List<Image>> getAllPicsDataSource() async =>
      await loadSliderImageProvider();
}
