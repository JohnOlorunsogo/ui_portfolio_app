import 'package:flutter/material.dart';
import 'package:ui_portfolio_app/widgets/custom_container.dart';

class Menu extends StatelessWidget {
  const Menu({
    required this.size,
    this.mobileFactor,
    super.key,
  });

  final double size;
  final double? mobileFactor;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      mobileFactor: mobileFactor,
      padding: mobileFactor == null
          ? EdgeInsets.all(0.00732 * size)
          : EdgeInsets.all(mobileFactor! * 0.0139),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.000732 * size),
            child: Row(
              children: [
                Text(
                  'Bim',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: mobileFactor == null
                        ? 0.0102 * size
                        : mobileFactor! * 0.0181,
                  ),
                ),
                Text(
                  'Graph',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: mobileFactor == null
                        ? 0.0102 * size
                        : mobileFactor! * 0.0181,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            padding: const EdgeInsets.all(0),
            onPressed: () {},
            icon: Icon(
              Icons.menu_rounded,
              color: Colors.white,
              size:
                  mobileFactor == null ? 0.0146 * size : mobileFactor! * 0.0264,
            ),
          ),
        ],
      ),
    );
  }
}
