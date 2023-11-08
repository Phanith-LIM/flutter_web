import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenteredView extends StatelessWidget {
  const CenteredView({
    required this.child,
    super.key,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: sizingInformation.isMobile ? 0 : 30,).add(EdgeInsets.only(top: sizingInformation.isMobile ? 0 : 60)),
          alignment: Alignment.topCenter,
          color: Colors.transparent,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1500),
            child: child,
          ),
        );
      },
    );
  }
}
