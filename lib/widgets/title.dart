import 'package:flutter/material.dart';
import 'package:ui_portfolio_app/widgets/custom_container.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    super.key,
    required this.size,
    this.mobileFactor,
  });

  final double size;
  final double? mobileFactor;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      mobileFactor: mobileFactor,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(6),
            child: Text(
              // softWrap: true,
              "Bring Your Ideas To Life Through UI Design",
              style: TextStyle(
                color: Colors.white,
                fontSize: mobileFactor == null
                    ? (0.04 * size)
                    : mobileFactor! * 0.0438,
                fontWeight: FontWeight.w700,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
          Positioned(
              right: 4,
              bottom: 4,
              child: GestureDetector(
                child: Container(
                  padding: mobileFactor == null
                      ? EdgeInsets.symmetric(
                          horizontal: size * 0.0146, vertical: size * 0.00585)
                      : EdgeInsets.symmetric(
                          horizontal: mobileFactor! * 0.0208,
                          vertical: mobileFactor! * 0.00972),
                  decoration: BoxDecoration(
                    borderRadius: mobileFactor == null
                        ? BorderRadius.circular(size * 0.0132)
                        : BorderRadius.circular(mobileFactor! * 0.0222),
                    color: Colors.purple,
                  ),
                  child: Row(
                    children: [
                      //read from json file
                      Text(
                        'Hire Me',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: mobileFactor == null
                              ? (0.01 * size)
                              : mobileFactor! * 0.02,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Icon(
                        Icons.waving_hand,
                        color: Colors.yellow,
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
