import 'package:flutter/material.dart';
import 'package:ui_portfolio_app/widgets/custom_container.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(7),
            child: Text(
              // softWrap: true,
              "Bring Your Ideas To Life Through UI Design",
              style: TextStyle(
                color: Colors.white,
                fontSize: 0.04 * size,
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.purple,
                  ),
                  child: Row(
                    children: [
                      //read from json file
                      Text(
                        'Hire Me',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 0.0102 * size,
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
