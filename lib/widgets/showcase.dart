import 'package:flutter/material.dart';
import 'package:ui_portfolio_app/model/designer.dart';
import 'package:ui_portfolio_app/widgets/custom_container.dart';
import 'package:ui_portfolio_app/widgets/image_container.dart';

class ShowCaseBar extends StatelessWidget {
  const ShowCaseBar({
    super.key,
    required this.size,
    required this.designer,
  });

  final double size;
  final Designer designer;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.all(size * 0.015),
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
                  fontSize: 0.0138 * size,
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'See All',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 0.013 * size,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          SizedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.min,
              children: [
                ImageContainer(
                  designer: designer,
                  size: size,
                  index: 0,
                ),
                ImageContainer(
                  designer: designer,
                  size: size,
                  index: 1,
                ),
                ImageContainer(
                  designer: designer,
                  size: size,
                  index: 2,
                ),
                ImageContainer(
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
