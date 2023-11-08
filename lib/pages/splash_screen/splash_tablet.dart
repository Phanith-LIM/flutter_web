import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_web/xcore.dart';

class SplashScreenTablet extends StatelessWidget {
  const SplashScreenTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: SpinKitWaveSpinner(
          color: kPrimary,
          size: 50.0,
          trackColor: kBgPrimary,
          waveColor: kBgSecondary,
        ),
      ),
    );
  }
}
