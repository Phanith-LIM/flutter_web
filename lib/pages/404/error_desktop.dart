import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_web/xcore.dart';

class ErrorDesktop extends StatelessWidget {
  const ErrorDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.network(
              'https://lottie.host/5fc65e99-145a-4af1-9c91-56f7ec37de77/lyi255WIFq.json',
              filterQuality: FilterQuality.high,
              frameRate: FrameRate.max,
              addRepaintBoundary: true,
              width: 300,
              height: 300,
              fit: BoxFit.cover,
              
            ),
            const SizedBox(height: 20,),
            ElevatedButton(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 20, vertical: 10)),
                shape: MaterialStateProperty.all(const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(kDefaultBorderRadius * 2)))),
                minimumSize: MaterialStateProperty.all(Size(Get.width * 0.13, 55)),
                backgroundColor: MaterialStateProperty.all(kBgSecondary),
                overlayColor: MaterialStateProperty.all(kSecondary.withOpacity(0.3)),
              ),
              onPressed: () {
                Get.find<NavigationService>().navigateTo(PagesRoute.home);
              },
              child: const Text('Back Home', style: TextStyle(color: Colors.white, fontSize: 16)),
            ).animate().scale(
              duration: const Duration(milliseconds: 300),
              curve: Curves.easeInOut,
            ),
          ],
        ),
      ),
    );
  }
}
