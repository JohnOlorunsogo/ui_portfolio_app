import 'package:flutter/material.dart';
import 'package:ui_portfolio_app/model/designer.dart';
import 'package:ui_portfolio_app/widgets/custom_container.dart';

class ExperienceBar extends StatelessWidget {
  const ExperienceBar({
    super.key,
    required this.designer,
    required this.size,
  });

  final Designer designer;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: CustomContainer(
            color: const Color(0xff00C399),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  designer.yearsExperience,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 0.025 * size,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  'Years Experience',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 0.00878 * size,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        Flexible(
          child: CustomContainer(
            color: const Color(0xffFFC13C),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    designer.handledProjects,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 0.025 * size,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'Handled Projects',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 0.00878 * size,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Flexible(
          child: CustomContainer(
            color: const Color(0xffFF6D7A),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    designer.handledProjects,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 0.025 * size,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    'Clients',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 0.00878 * size,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
