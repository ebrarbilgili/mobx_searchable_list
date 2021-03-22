import 'package:flutter/material.dart';
import 'package:mobx_searchable_list/base/MainPage/view/main_page_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MainPageView(),
    );
  }
}
