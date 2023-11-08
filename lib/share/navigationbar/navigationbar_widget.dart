import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_web/xcore.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({
    required this.title,
    required this.items,
    this.onDrawer,
    super.key,
  });
  final String? title;
  final List<Widget> items;
  final Function()? onDrawer;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) {
        return NavigationBarMobile(
          title: title,
          item: items,
          onDrawer: onDrawer,
        );
      },
      tablet: (_) {
        return NavigationBarTablet(
          title: title,
          item: items,
        );
      },
      desktop: (_) {
        return NavigationBarDesktop(
          title: title,
          item: items,
        );
      }
    );
  }
}
