import 'package:flutter/cupertino.dart';

class SettingProvider extends ChangeNotifier {
  bool lockbutton=true;
  bool fingerbutton=false;
  bool passwordbutton=false;

  void buttonswitch(bool value) {
   lockbutton=value;
    notifyListeners();
  }

  void fingerswitch(bool value) {
    fingerbutton=value;
    notifyListeners();
  }

  void passwordswitch(bool value) {
    passwordbutton=value;
    notifyListeners();
  }
}
