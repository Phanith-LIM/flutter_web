import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationItem extends StatefulWidget {
  const NavigationItem({
    required this.name,
    this.onPressed,
    this.fontSize = 12.0,
    this.color = Colors.redAccent,
    super.key,
  });
  final String name;
  final double? fontSize;
  final Color? color;
  final Function()? onPressed;

  @override
  State<NavigationItem> createState() => _NavigationItemState();
}

class _NavigationItemState extends State<NavigationItem> {
  bool isHovered = false;
  void onEntered(bool isHovered) {
    setState(() {
      this.isHovered = isHovered;
    });
  }

  @override
  Widget build(BuildContext context) {
    final hoveredTransform = Matrix4.identity()..translate(0, -5, 0);
    final transform = isHovered ? hoveredTransform : Matrix4.identity();
    return MouseRegion(
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform: transform,
        child: TextButton(
          onPressed: widget.onPressed,
          child: Text(
            widget.name,
            style: TextStyle(
              fontSize: widget.fontSize,
              color: widget.color,
              fontFamily: GoogleFonts.roboto().fontFamily,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
