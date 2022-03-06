import 'package:flutter/widgets.dart';
import 'package:internative/models/account/get_model.dart';
import 'package:internative/models/blog/get_categories_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class User with ChangeNotifier {
  String? _token;
  static SharedPreferences? _sharedPref;

  String? token() => _token;

  Future<void> createSharedPref() async {
    _sharedPref = await SharedPreferences.getInstance();
  }

  void saveTokenToSharedPref(String data) {
    _sharedPref!.setString('token', data);
  }

  void getTokenFromSharedPref() async {
    if (_sharedPref?.getString('token') == null) {
      _token = null;
    } else {
      _token = _sharedPref?.getString('token');
    }
  }

  void clearAll() async {
    await _sharedPref!.clear();
  }
}
