import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:test_tenang/api/api.dart';
import 'package:test_tenang/model/usersModel.dart';

class PostDataProvider extends ChangeNotifier {
  List<GetMahasiswa> _maha = [];
  List<GetMahasiswa> get maha => _maha;
  bool loading = false;

  Future<void> getUsers() async {
    final res = await Api().getUsers();

    try {
      if (res.statusCode == 200) {
        _maha = (jsonDecode(res.body)['data'] as List).isNotEmpty
            ? (jsonDecode(res.body)['data'] as List)
                .map((e) => GetMahasiswa.fromJson(e))
                .toList()
            : [];
      } else {
        _maha = [];
      }
    } on Exception catch (e) {
      print(e.toString());
    }
    notifyListeners();
  }
}
