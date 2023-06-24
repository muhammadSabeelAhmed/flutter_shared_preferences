import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:storageclass/constants/keysconstans.dart';

class Storage {
  static addData(String data) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(KeyConstans.UserData, data);
  }

  static getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.get(KeyConstans.UserData);
  }
}
