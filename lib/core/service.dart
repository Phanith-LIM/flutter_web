import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic>? navigateTo(String routeName) {
    return Get.toNamed(routeName);
  }

  void goBack() {
    return Get.back();
  }

  Future<dynamic>? goBackTo(String routeName) {
    return Get.offAllNamed(routeName);
  }
}

