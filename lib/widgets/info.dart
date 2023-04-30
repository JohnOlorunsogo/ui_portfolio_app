import 'package:flutter/material.dart';
import 'package:ui_portfolio_app/model/designer.dart';
import 'package:ui_portfolio_app/widgets/custom_container.dart';

class InfoBar extends StatelessWidget {
  const InfoBar({
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
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          flex: 3,
          child: CustomContainer(
            mobileFactor: mobileFactor,
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
                  mobileFactor: mobileFactor,
                  child: Padding(
                    padding: mobileFactor == null
                        ? EdgeInsets.symmetric(horizontal: size * 0.00585)
                        : EdgeInsets.symmetric(
                            horizontal: mobileFactor! * 0.00139),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Name :',
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: mobileFactor == null
                                ? 0.0102 * size
                                : mobileFactor! * 0.0153,
                          ),
                        ),
                        Text(
                          designer.name,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: mobileFactor == null
                                ? 0.0102 * size
                                : mobileFactor! * 0.0153,
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
                  mobileFactor: mobileFactor,
                  padding: const EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Padding(
                        padding: mobileFactor == null
                            ? EdgeInsets.all(size * 0.01)
                            : const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Based In :",
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: mobileFactor == null
                                    ? 0.0102 * size
                                    : mobileFactor! * 0.0153,
                              ),
                            ),
                            Text(
                              designer.location,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: mobileFactor == null
                                    ? 0.0102 * size
                                    : mobileFactor! * 0.0153,
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
                  mobileFactor: mobileFactor,
                  padding: mobileFactor == null
                      ? EdgeInsets.all(0.00732 * size)
                      : EdgeInsets.all(mobileFactor! * 0.00556),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: mobileFactor == null
                            ? 0.0202 * size
                            : mobileFactor! * 0.02,
                        backgroundColor: Colors.black,
                        foregroundImage: const AssetImage(
                          'assets/img/linkedin.png',
                        ),
                      ),
                      CircleAvatar(
                        radius: mobileFactor == null
                            ? 0.0202 * size
                            : mobileFactor! * 0.02,
                        backgroundColor: Colors.black,
                        foregroundImage: const AssetImage(
                          'assets/img/dribbble.png',
                        ),
                      ),
                      CircleAvatar(
                        radius: mobileFactor == null
                            ? 0.0202 * size
                            : mobileFactor! * 0.02,
                        backgroundColor: Colors.black,
                        foregroundImage: const AssetImage(
                          'assets/img/insta.png',
                        ),
                      ),
                      CircleAvatar(
                        radius: mobileFactor == null
                            ? 0.0202 * size
                            : mobileFactor! * 0.02,
                        backgroundColor: Colors.black,
                        foregroundImage: const AssetImage(
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
