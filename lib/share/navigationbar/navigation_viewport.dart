import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_web/xcore.dart';
import 'package:flutter_animate/flutter_animate.dart';

class NavigationBarMobile extends StatelessWidget {
  const NavigationBarMobile({
    required this.item,
    this.onDrawer,
    this.title = 'Wedding Hub',
    super.key,
  });
  final String? title;
  final List<Widget> item;
  final Function()? onDrawer;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget> [
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: onDrawer,
        ).animate().moveX(
          begin: -50,
          end: 0,
          duration: const Duration(milliseconds: 300),
        ),
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {
            Get.find<NavigationService>().navigateTo(PagesRoute.splashScreen);
          },
          child: Text(
            title!.toUpperCase(),
            style: TextStyle(
              color: kSecondary,
              fontSize: 20,
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontWeight: FontWeight.bold,
            ),
          ).animate().moveX(
            begin: -50,
            end: 0,
            duration: const Duration(milliseconds: 250),
          ),
        ),
        TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kDefaultBorderRadius),
              ),
            ),
          ),
          onPressed: () {},
          child: const Text('Downlaod Now'),
        ),
      ],
    );
  }
}


class NavigationBarTablet extends StatelessWidget {
  const NavigationBarTablet({
    required this.item,
    this.title = 'Wedding Hub',
    super.key,
  });
  final String? title;
  final List<Widget> item;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {
            Get.find<NavigationService>().navigateTo(PagesRoute.splashScreen);
          },
          child: Text(
            title!.toUpperCase(),
            style: TextStyle(
              color: kSecondary,
              fontSize: 20,
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontWeight: FontWeight.bold,
            ),
          ).animate().moveX(
            begin: -50,
            end: 0,
            duration: const Duration(milliseconds: 250),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: item,
        ).animate().moveX(
          begin: 50,
          end: 0,
          duration: const Duration(milliseconds: 250),
        ),
      ],
    );
  }
}


class NavigationBarDesktop extends StatelessWidget {
  const NavigationBarDesktop({
    required this.item,
    this.title = 'Wedding Hub',
    super.key,
  });
  final String? title;
  final List<Widget> item;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: () {
            Get.find<NavigationService>().navigateTo(PagesRoute.splashScreen);
          },
          child: Text(
            'Wedding Hub'.toUpperCase(),
            style: TextStyle(
              color: kSecondary,
              fontSize: 20,
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontWeight: FontWeight.bold,
            ),
          ).animate().moveX(
            begin: -50,
            end: 0,
            duration: const Duration(milliseconds: 250),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: item,
        ).animate().moveX(
          begin: 50,
          end: 0,
          duration: const Duration(milliseconds: 250),
        ),
      ],
    );
  }
}
