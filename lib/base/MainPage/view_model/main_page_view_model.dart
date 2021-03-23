import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_searchable_list/base/MainPage/model/main_page_model.dart';
import 'package:mobx_searchable_list/base/MainPage/service/main_page_service.dart';
part 'main_page_view_model.g.dart';

class MainPageViewModel = _MainPageViewModelBase with _$MainPageViewModel;

abstract class _MainPageViewModelBase with Store {
  @observable
  List<MainPageModel> dataList = [];
  @observable
  List<MainPageModel> filteredList = [];

  @observable
  bool close = true;

  MainPageService mainPageService;

  _MainPageViewModelBase({required this.mainPageService}) {
    fetch();
  }

  @observable
  TextEditingController controller = TextEditingController();

  @action
  Future<void> fetch() async {
    dataList = await mainPageService.fetchData();
  }

  @action
  void search() {
    filteredList.clear();
    dataList.forEach((e) {
      if (e.name!.toLowerCase().contains(controller.text)) {
        filteredList.add(e);
      }
    });
  }

  @action
  void changeClose() {
    close = !close;
  }
}
