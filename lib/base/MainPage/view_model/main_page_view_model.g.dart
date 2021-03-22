// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_page_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainPageViewModel on _MainPageViewModelBase, Store {
  final _$dataListAtom = Atom(name: '_MainPageViewModelBase.dataList');

  @override
  List<MainPageModel> get dataList {
    _$dataListAtom.reportRead();
    return super.dataList;
  }

  @override
  set dataList(List<MainPageModel> value) {
    _$dataListAtom.reportWrite(value, super.dataList, () {
      super.dataList = value;
    });
  }

  final _$filteredListAtom = Atom(name: '_MainPageViewModelBase.filteredList');

  @override
  List<MainPageModel> get filteredList {
    _$filteredListAtom.reportRead();
    return super.filteredList;
  }

  @override
  set filteredList(List<MainPageModel> value) {
    _$filteredListAtom.reportWrite(value, super.filteredList, () {
      super.filteredList = value;
    });
  }

  final _$controllerAtom = Atom(name: '_MainPageViewModelBase.controller');

  @override
  TextEditingController get controller {
    _$controllerAtom.reportRead();
    return super.controller;
  }

  @override
  set controller(TextEditingController value) {
    _$controllerAtom.reportWrite(value, super.controller, () {
      super.controller = value;
    });
  }

  final _$fetchAsyncAction = AsyncAction('_MainPageViewModelBase.fetch');

  @override
  Future<void> fetch() {
    return _$fetchAsyncAction.run(() => super.fetch());
  }

  final _$_MainPageViewModelBaseActionController =
      ActionController(name: '_MainPageViewModelBase');

  @override
  void search() {
    final _$actionInfo = _$_MainPageViewModelBaseActionController.startAction(
        name: '_MainPageViewModelBase.search');
    try {
      return super.search();
    } finally {
      _$_MainPageViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dataList: ${dataList},
filteredList: ${filteredList},
controller: ${controller}
    ''';
  }
}
