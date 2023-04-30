import 'package:flutter/material.dart';
import 'package:ui_portfolio_app/model/designer.dart';
import 'package:ui_portfolio_app/widgets/custom_container.dart';
import 'package:ui_portfolio_app/widgets/image_container.dart';

class ShowCaseBar extends StatelessWidget {
  const ShowCaseBar({
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
    var sizedBox =
        SizedBox(width: mobileFactor == null ? 20 : mobileFactor! * 0.02);
    return CustomContainer(
      mobileFactor: mobileFactor,
      padding: mobileFactor == null
          ? EdgeInsets.all(size * 0.015)
          : EdgeInsets.all(mobileFactor! * 0.01667),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "UI Portfolio",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: mobileFactor == null
                      ? 0.0138 * size
                      : mobileFactor! * 0.02,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: mobileFactor == null
                        ? 0.0138 * size
                        : mobileFactor! * 0.02,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            height:
                mobileFactor == null ? size * 0.189 : mobileFactor! * 0.1389,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ImageContainer(
                  mobileFactor: mobileFactor,
                  designer: designer,
                  size: size,
                  index: 0,
                ),
                sizedBox,
                ImageContainer(
                  mobileFactor: mobileFactor,
                  designer: designer,
                  size: size,
                  index: 1,
                ),
                sizedBox,
                ImageContainer(
                  mobileFactor: mobileFactor,
                  designer: designer,
                  size: size,
                  index: 2,
                ),
                sizedBox,
                ImageContainer(
                  mobileFactor: mobileFactor,
                  designer: designer,
                  size: size,
                  index: 1,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
