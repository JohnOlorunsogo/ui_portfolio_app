import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    required this.child,
    this.padding = const EdgeInsets.all(10),
    super.key,
  });

  final EdgeInsets padding;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.maxFinite,
      // height: double.maxFinite,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xff1D1B1E),
      ),
      padding: padding,
      child: child,
    );
  }
}
