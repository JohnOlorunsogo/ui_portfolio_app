import 'package:flutter/material.dart';
import 'package:ui_portfolio_app/model/designer.dart';
import 'package:ui_portfolio_app/widgets/about.dart';
import 'package:ui_portfolio_app/widgets/experience.dart';
import 'package:ui_portfolio_app/widgets/image_container.dart';
import 'package:ui_portfolio_app/widgets/info.dart';
import 'package:ui_portfolio_app/widgets/showcase.dart';
import 'package:ui_portfolio_app/widgets/title.dart';
import 'package:ui_portfolio_app/widgets/menu.dart';

import '../widgets/custom_container.dart';

class DesktopView extends StatelessWidget {
  const DesktopView({required this.designer, super.key});
  final Designer designer;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Flexible(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              //first column
              Flexible(
                child: Column(
                  children: [
                    Flexible(
                      flex: 3,
                      child: TitleBar(size: size),
                    ),
                    Flexible(
                      flex: 2,
                      child: ExperienceBar(designer: designer, size: size),
                    )
                  ],
                ),
              ),

              //second column
              Flexible(
                child: Column(
                  children: [
                    Flexible(flex: 1, child: Menu(size: size)),
                    Flexible(
                      flex: 6,
                      child: InfoBar(size: size, designer: designer),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 2,
          child: Row(
            children: [
              Flexible(
                flex: 3,
                child: ShowCaseBar(size: size, designer: designer),
              ),
              Flexible(
                flex: 2,
                child: AboutBar(size: size, designer: designer),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
