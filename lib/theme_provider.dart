import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class ThemeModel extends ChangeNotifier{
  static String CONTAINER_KEY = 'black_key';
  static String SCAFOLD_KEY = 'pink_key';
  Color black = Colors.black;
  Color cyan = Colors.cyan;
  ThemeModel(){
    toggleTheme();
  }
  toggleTheme() async {
    var instance  = await SharedPreferences.getInstance();
   black = Color(instance.getInt(CONTAINER_KEY)!);
   cyan = Color(instance.getInt(SCAFOLD_KEY)!);
   notifyListeners();

  }
}