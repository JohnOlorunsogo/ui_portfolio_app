import 'package:flutter/material.dart';
import 'package:ui_portfolio_app/model/designer.dart';
import 'package:ui_portfolio_app/widgets/custom_container.dart';

class InfoBar extends StatelessWidget {
  const InfoBar({
    super.key,
    required this.size,
    required this.designer,
  });

  final double size;
  final Designer designer;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 3,
          child: CustomContainer(
            padding: EdgeInsets.zero,
            child: Image.asset('assets/img/cm2.jpeg', fit: BoxFit.cover),
          ),
        ),
        Flexible(
          flex: 3,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                flex: 1,
                child: CustomContainer(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: size * 0.00585),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Name :',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 0.0102 * size,
                          ),
                        ),
                        Text(
                          designer.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 0.0102 * size,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Flexible(
                flex: 3,
                child: CustomContainer(
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(size * 0.01318),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Based In :",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 0.0102 * size,
                              ),
                            ),
                            Text(
                              designer.location,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 0.0102 * size,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Flexible(
                        child: Image.asset(
                          'assets/img/Screenshot at 2023-04-27 14-58-15.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: CustomContainer(
                  padding: EdgeInsets.all(0.00732 * size),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage(
                          'assets/img/linkedin.png',
                        ),
                      ),
                      CircleAvatar(
                        foregroundColor: Colors.black,
                        foregroundImage: AssetImage(
                          'assets/img/dribbble.png',
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage(
                          'assets/img/insta.png',
                        ),
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage(
                          'assets/img/twitter.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
