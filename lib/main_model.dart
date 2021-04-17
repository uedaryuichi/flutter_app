import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier{
   String uedaText = 'Uedaじゃない';

  void changeUedaText() {
    uedaText = 'Uedaかっこいい?';
    notifyListeners();
  }
}