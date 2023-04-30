import 'package:flutter/material.dart';
import 'package:ui_portfolio_app/model/designer.dart';
import 'package:ui_portfolio_app/widgets/custom_container.dart';

class AboutBar extends StatelessWidget {
  const AboutBar({
    super.key,
    required this.size,
    required this.designer,
    this.mobileFactor,
  });

  final double size;
  final Designer designer;
  final double? mobileFactor;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      mobileFactor: mobileFactor,
      padding: mobileFactor == null
          ? EdgeInsets.only(
              top: size * 0.016,
              left: size * 0.017,
              right: size * 0.017,
              bottom: size * 0.01,
            )
          : EdgeInsets.only(
              top: mobileFactor! * 0.017,
              left: mobileFactor! * 0.02,
              right: mobileFactor! * 0.02,
              bottom: mobileFactor! * 0.02,
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
                  fontSize: mobileFactor == null
                      ? 0.0138 * size
                      : mobileFactor! * 0.024,
                ),
              ),
              Text(
                "Resume",
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: mobileFactor == null
                      ? 0.0138 * size
                      : mobileFactor! * 0.024,
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
              fontSize:
                  mobileFactor == null ? 0.012 * size : mobileFactor! * 0.02,
              height: mobileFactor == null
                  ? 0.00125 * size
                  : mobileFactor! * 0.0021,
              color: Colors.white70,
              wordSpacing:
                  mobileFactor == null ? 0.0051 * size : mobileFactor! * 0.0034,
            ),
          ),
        ],
      ),
    );
  }
}
