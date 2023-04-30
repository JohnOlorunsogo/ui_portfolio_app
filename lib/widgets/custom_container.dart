import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    required this.child,
    this.color = const Color(0xff1D1B1E),
    this.padding = const EdgeInsets.all(10),
    this.mobileFactor,
    super.key,
  });

  final EdgeInsets padding;
  final Widget child;
  final Color color;
  final double? mobileFactor;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      clipBehavior: Clip.hardEdge,
      width: double.maxFinite,
      height: double.maxFinite,
      margin: mobileFactor == null
          ? EdgeInsets.all(size.width * 0.00585)
          : EdgeInsets.all(mobileFactor! * 0.005),
      decoration: BoxDecoration(
        borderRadius: mobileFactor == null
            ? BorderRadius.circular(size.width * 0.0146)
            : BorderRadius.circular(mobileFactor! * 0.013),
        color: color,
      ),
      padding: padding,
      child: child,
    );
  }
}
