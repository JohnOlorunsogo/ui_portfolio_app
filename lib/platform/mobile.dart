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
    return SingleChildScrollView(
      child: SizedBox(
        height: double.maxFinite,
        child: ListView(
          children: [
            Menu(size: size),
            TitleBar(size: size),
            InfoBar(
              designer: designer,
              size: size,
            ),
            ExperienceBar(
              designer: designer,
              size: size,
            ),
            ShowCaseBar(
              designer: designer,
              size: size,
            ),
            AboutBar(
              designer: designer,
              size: size,
            ),
          ],
        ),
      ),
    );
  }
}
