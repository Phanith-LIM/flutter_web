import 'package:flutter_web/xcore.dart';
import 'package:get/get.dart';

class PagesController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    currentPage.value = Get.currentRoute;
  }
  @override
  void onInit() {
    super.onInit();
  }
  final currentPage = PagesRoute.error.obs;
}