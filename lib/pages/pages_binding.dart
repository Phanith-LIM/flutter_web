import 'package:get/get.dart';
import 'package:flutter_web/xcore.dart';

class PagesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PagesController>(() => PagesController(),);
  }
}