import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_searchable_list/base/MainPage/service/main_page_service.dart';
import 'package:mobx_searchable_list/base/MainPage/view_model/main_page_view_model.dart';
import 'package:mobx_searchable_list/constants/service_constants.dart';

part 'main_page_strings.dart';

class MainPageView extends StatelessWidget with _MainPageStringValues {
  final viewModel = MainPageViewModel(
    mainPageService: MainPageService(
      service: Dio(BaseOptions(baseUrl: ServicePath.BASEURL.values)),
    ),
  );

  Icon get searchIcon => Icon(Icons.search);
  Icon get closeIcon => Icon(Icons.close);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          Observer(
            builder: (context) => IconButton(
              icon: viewModel.close ? searchIcon : closeIcon,
              onPressed: () {
                viewModel.search();

                viewModel.changeClose();
              },
            ),
          ),
        ],
      ),
      body: Observer(
        builder: (context) => ListView(
          children: [
            viewModel.close
                ? SizedBox()
                : TextField(
                    controller: viewModel.controller,
                  ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: viewModel.filteredList.isEmpty
                  ? viewModel.dataList.length
                  : viewModel.filteredList.length,
              itemBuilder: (context, index) {
                final data = viewModel.filteredList.isEmpty
                    ? viewModel.dataList[index]
                    : viewModel.filteredList[index];

                return Card(
                  child: ListTile(
                    title: Text(data.name ?? ''),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
