import 'package:fidibo_test/data/source/pic_data_source.dart';
import 'package:flutter/material.dart';

abstract class IPicRepository {
  Future<List<Image>> getAllImage();
}

//repository for get pic from Internet
class PicRemoteRepository extends IPicRepository {
  final IPicDataSource dataSource;

  PicRemoteRepository(this.dataSource);

  @override
  Future<List<Image>> getAllImage() async =>
      await dataSource.getAllPicsDataSource();
}

PicRemoteRepository repository = PicRemoteRepository(PicDataSource());
