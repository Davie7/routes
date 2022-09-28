import 'package:flutter/material.dart';

import '../pages/main_page.dart';
import '../pages/second_page.dart';
import '../pages/third_page.dart';

class RouteManager {
  // your homepage should only have a single backslash .
  static const String homePage = '/';
  static const String secondPage = '/secondPage';
  static const String thirdPage = '/thirdPage';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    var valuepassed;
    
    if (settings.arguments != null){
      valuepassed = settings.arguments;
    }

    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => MainPage(),
        );
        case secondPage:
        return MaterialPageRoute(
          builder: (context) => SecondPage(),
        );
        case thirdPage:
        return MaterialPageRoute(
          builder: (context) => ThirdPage(
            name: valuepassed['name'],
          ),
        );
        default:
        throw FormatException('Check route connection');
    }
  }
}
