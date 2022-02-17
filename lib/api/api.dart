import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:test_tenang/model/usersModel.dart';

class Api {
  final String base_url = 'https://bosomy-unit.000webhostapp.com/';
  Future<http.Response> getUsers() async {
    var urll = Uri.parse('$base_url/mahasiswa');
    var res = await http.get(urll);

    return getRes(res);
  }

  Future<http.Response> getRes(http.Response res) async {
    try {
      return res;
    } on SocketException catch (e) {
      throw Exception(e.toString());
    } on HttpException {
      {
        throw Exception("Tidak ditemukan");
      }
    } on FormatException {
      throw Exception("Request Salah");
    } on TimeoutException catch (e) {
      throw Exception(e.toString());
    }
  }
}
