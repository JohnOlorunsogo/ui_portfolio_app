import 'package:flutter/material.dart';
import 'package:ui_portfolio_app/widgets/custom_container.dart';

class Menu extends StatelessWidget {
  const Menu({
    required this.size,
    super.key,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      padding: EdgeInsets.all(0.00732 * size),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.00732 * size),
            child: Row(
              children: [
                Text(
                  'Bim',
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 0.0102 * size,
                  ),
                ),
                Text(
                  'Graph',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 0.0102 * size,
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
              size: 0.0146 * size,
            ),
          ),
        ],
      ),
    );
  }
}
