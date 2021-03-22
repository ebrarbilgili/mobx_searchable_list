import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobx_searchable_list/base/MainPage/model/main_page_model.dart';

class MainPageService {
  final Dio service;
  MainPageService({required this.service});

  Future<List<MainPageModel>> fetchData() async {
    final response = await service.get('/users');

    if (response.statusCode == HttpStatus.ok) {
      final data = response.data;
      if (data is List) {
        return data.map((e) => MainPageModel.fromJson(e)).toList();
      }
    }

    return [];
  }
}
