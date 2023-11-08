import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_web/xcore.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    required this.item,
    super.key,
  });
  final List<Widget> item;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Get.width * 0.5,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: item,
        ).animate().moveX(
          begin: 50,
          end: 0,
          duration: const Duration(milliseconds: 250),
        ),
      ),
    );
  }
}


class DrawerItem extends StatelessWidget {
  const DrawerItem({
    required this.onTap,
    required this.label,
    super.key,
  });
  final Function()? onTap;
  final String label;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: kBgSecondary.withOpacity(0.1),
      borderRadius: BorderRadius.circular(kDefaultBorderRadius),
      onTap: onTap,
      child: Container(
        width: Get.width,
        margin: const EdgeInsets.all(kDefaultSpace),
        padding: const EdgeInsets.all(kDefaultSpace),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: kSecondary,
            fontSize: 14,
            fontFamily: GoogleFonts.roboto().fontFamily,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
