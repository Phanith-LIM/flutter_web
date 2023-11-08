import 'package:flutter/material.dart';
import 'xcore.dart';
import 'package:get/get.dart';
import 'package:flutter_web/xcore.dart';

class PagesRoute {

  static const String home = '/';
  static const String error = '/error';
  static const String aboutUs = '/about_us';
  static const String splashScreen = '/splash_screen';

  static final Map<String, GetPage> routes = {

    splashScreen: GetPage(
      name: splashScreen,
      page: () => const SplashScreenView(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      fullscreenDialog: true,
    ),
    home: GetPage(
      name: home,
      page: () => const Center(
        child: Text('Home'),
      ),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
    ),
    aboutUs: GetPage(
      name: aboutUs,
      page: () => const Center(
        child: Text('About Us'),
      ),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    ),
    error: GetPage(
      name: error,
      page: () => const ErrorView(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    ),
  };


  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final pageBuilder = routes[settings.name];
    if (pageBuilder != null) {
      return GetPageRoute(
        settings: settings,
        page: pageBuilder.page,
        binding: pageBuilder.binding,
        transition: pageBuilder.transition,
        transitionDuration: pageBuilder.transitionDuration ?? const Duration(milliseconds: 500),
        fullscreenDialog: pageBuilder.fullscreenDialog,
        curve: pageBuilder.curve,
      );
    }
    return GetPageRoute(
      settings: settings,
      page: () => const ErrorView(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}