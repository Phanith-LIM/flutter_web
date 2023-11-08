import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_web/xcore.dart';

class SplashScreenView extends GetView<PagesController> {
  const SplashScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    loading();
    return ScreenTypeLayout.builder(
      mobile: (_) => const SplashScreenMobile(),
      tablet: (_) => const SplashScreenTablet(),
      desktop: (_) => const SplashScreenDesktop(),
    );
  }

  Future<void> loading() async {
    await Future.delayed(const Duration(seconds: 2));
    controller.currentPage.value = PagesRoute.home;
    Get.find<NavigationService>().navigateTo(controller.currentPage.value);
  }
}
