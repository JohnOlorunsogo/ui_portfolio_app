import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    required this.child,
    this.color = const Color(0xff1D1B1E),
    this.padding = const EdgeInsets.all(10),
    super.key,
  });

  final EdgeInsets padding;
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      clipBehavior: Clip.hardEdge,
      width: double.maxFinite,
      height: double.maxFinite,
      margin: EdgeInsets.all(size.width * 0.00585),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size.width * 0.0146),
        color: color,
      ),
      padding: padding,
      child: child,
    );
  }
}
