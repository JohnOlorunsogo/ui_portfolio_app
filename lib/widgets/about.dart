import 'package:flutter/material.dart';
import 'package:ui_portfolio_app/model/designer.dart';
import 'package:ui_portfolio_app/widgets/custom_container.dart';

class AboutBar extends StatelessWidget {
  const AboutBar({
    super.key,
    required this.size,
    required this.designer,
  });

  final double size;
  final Designer designer;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.only(
        top: size * 0.016,
        left: size * 0.017,
        right: size * 0.017,
        bottom: size * 0.01,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'About',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 0.0138 * size,
                ),
              ),
              Text(
                "Resume",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 0.013 * size,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            // textWidthBasis: TextWidthBasis.parent,

            designer.about,
            style: TextStyle(
              overflow: TextOverflow.fade,
              fontSize: 0.012 * size,
              height: 0.00125 * size,
              color: Colors.white70,
              wordSpacing: 0.0051 * size,
            ),
          ),
        ],
      ),
    );
  }
}
