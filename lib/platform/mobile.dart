import 'package:flutter/material.dart';
import 'package:ui_portfolio_app/model/designer.dart';
import 'package:ui_portfolio_app/widgets/about.dart';
import 'package:ui_portfolio_app/widgets/experience.dart';
import 'package:ui_portfolio_app/widgets/info.dart';
import 'package:ui_portfolio_app/widgets/menu.dart';
import 'package:ui_portfolio_app/widgets/showcase.dart';
import 'package:ui_portfolio_app/widgets/title.dart';

class MobileView extends StatelessWidget {
  const MobileView({required this.designer, super.key});
  final Designer designer;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        SizedBox(
          height: 50,
          child: Menu(
            size: size,
            mobileFactor: size,
          ),
        ),
        SizedBox(
          height: 160,
          child: TitleBar(
            size: size,
            mobileFactor: size,
          ),
        ),
        SizedBox(
          height: 210,
          child: InfoBar(
            designer: designer,
            size: size,
            mobileFactor: size,
          ),
        ),
        SizedBox(
          height: 120,
          child: ExperienceBar(
            designer: designer,
            size: size,
            mobileFactor: size,
          ),
        ),
        SizedBox(
          height: 180,
          child: ShowCaseBar(
            designer: designer,
            size: size,
            mobileFactor: size,
          ),
        ),
        SizedBox(
          height: 260,
          child: AboutBar(
            designer: designer,
            size: size,
            mobileFactor: size,
          ),
        ),
      ],
    );
  }
}
