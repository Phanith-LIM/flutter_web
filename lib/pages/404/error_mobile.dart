import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorMobile extends StatelessWidget {
  const ErrorMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Lottie.network(
        'https://lottie.host/5fc65e99-145a-4af1-9c91-56f7ec37de77/lyi255WIFq.json',
          width: 300,
          height: 300,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
