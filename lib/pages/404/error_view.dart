import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_web/xcore.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) {
        return const ErrorMobile();
      },
      tablet: (_) {
        return const ErrorTablet();
      },
      desktop: (_) {
        return const ErrorDesktop();
      }
    ).animate().fadeIn(
      duration: const Duration(milliseconds: 500),
    );
  }
}
