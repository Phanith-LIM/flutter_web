import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web/xcore.dart';
import 'package:url_strategy/url_strategy.dart';
void main() {
  Get.put(NavigationService());
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'WeddingHub',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: kBgPrimary),
          useMaterial3: true,
          primaryColor: kBgPrimary,
          iconTheme: const IconThemeData(color: kSecondary),
          drawerTheme: const DrawerThemeData(
            backgroundColor: kBgPrimary,
            elevation: 0,
          ),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              overlayColor: MaterialStateProperty.all(
                  kSecondary.withOpacity(0.3)),
              foregroundColor: MaterialStateProperty.resolveWith<Color?>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.black;
                  }
                  return null; // defer to the defaults
                },
              ),
            ),
          ),
        ),
        unknownRoute: GetPage(
          name: PagesRoute.error,
          page: () => const ErrorView(),
          transition: Transition.fade,
          transitionDuration: const Duration(milliseconds: 300),
        ),
        initialRoute: PagesRoute.splashScreen,
        getPages: PagesRoute.routes.values.toList(),
        navigatorKey: Get.find<NavigationService>().navigatorKey,
        onGenerateRoute: PagesRoute.onGenerateRoute,
        onGenerateTitle: (context) => 'WeddingHub',
        initialBinding: PagesBinding(),
        builder: (_, child) {
          return PagesView(
            child: Expanded(
              child: child!,
            ),
          );
        },
    );
  }
}
