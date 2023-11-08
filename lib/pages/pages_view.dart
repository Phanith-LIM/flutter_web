import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_web/xcore.dart';

class PagesView extends GetView<PagesController> {
  const PagesView({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> drawerKey = GlobalKey();
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return WillPopScope(
          onWillPop: () async => false,
          child: Scaffold(
            key: drawerKey,
            backgroundColor: Colors.transparent,
            drawer: sizingInformation.isMobile ? DrawerWidget(
              item: [
                DrawerItem(
                  onTap: () {
                    controller.currentPage.value = PagesRoute.home;
                    Get.toNamed(PagesRoute.home);
                  },
                  label: 'Home'.toUpperCase(),
                ),
                DrawerItem(
                  onTap: () {
                    controller.currentPage.value = PagesRoute.aboutUs;
                    Get.toNamed(PagesRoute.aboutUs);
                  },
                  label: 'About Us'.toUpperCase(),
                ),
                DrawerItem(
                  onTap: () {

                  },
                  label: 'Team'.toUpperCase(),
                ),
              ],
            ) : null,
            body: Obx(() {
              if(controller.currentPage.value == PagesRoute.splashScreen) {
                return const SplashScreenView();
              }
              return CenteredView(
                child: Column(
                  children: [
                    NavigationBarWidget(
                      title: 'Report App',
                      onDrawer: () {
                        drawerKey.currentState!.openDrawer();
                      },
                      items: [
                        NavigationItem(
                          name: 'Home'.toUpperCase(),
                          fontSize: 14,
                          color: controller.currentPage.value != PagesRoute.home ? kSecondary : kPrimary,
                          onPressed: () {
                            controller.currentPage.value = PagesRoute.home;
                            Get.toNamed(PagesRoute.home);
                          },
                        ),
                        const SizedBox(width: kDefaultSpace * 3,),
                        NavigationItem(
                          name: 'About Us'.toUpperCase(),
                          onPressed: () {
                            controller.currentPage.value = PagesRoute.aboutUs;
                            Get.toNamed(PagesRoute.aboutUs);
                          },
                          fontSize: 14,
                          color: controller.currentPage.value != PagesRoute.aboutUs? kSecondary : kPrimary,
                        ),
                        const SizedBox(width: kDefaultSpace * 3,),
                      ],
                    ),
                    SizedBox(height: sizingInformation.isMobile ? kDefaultSpace * 2 : kDefaultSpace * 4,),
                    child ?? const SizedBox(),
                  ],
                ),
              );
            })
          ),
        );
      },
    );
  }
}
