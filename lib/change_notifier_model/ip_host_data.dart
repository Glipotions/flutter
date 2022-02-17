import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IpHost with ChangeNotifier {
  String? _hostAdi;
  String? _ip;
  static SharedPreferences _sharedPref = SharedPreferences as SharedPreferences;

  void hostSec(String hostAdi, String ip) {
    // _selectedThemeData = selected ? greenTheme : redTheme;
    _hostAdi = hostAdi;
    _ip = ip;
    saveHostToSharedPref(hostAdi, ip);
    notifyListeners();
  }

  String? get ip => _ip;
  String? get hostAdi => _hostAdi;

  Future<void> createPrefObject() async {
    _sharedPref = await SharedPreferences.getInstance();
  }

  void saveHostListToSharedPref(String encodedData) async {
    await _sharedPref.setString('ip_host_list', encodedData);
  }

  void saveHostToSharedPref(String hostAdi, String ip) {
    _sharedPref.setString('hostAdi', hostAdi);
    _sharedPref.setString('ip', ip);
  }

  Future<String?> loadHostToSharedPref() async {
    // _hostAdi = _sharedPref.getString('hostAdi') ?? "";
    // _ip = _sharedPref.getString('ip') ?? "";
    return await _sharedPref.getString('musics_key');
  }
}
