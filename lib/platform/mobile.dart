import 'package:flutter/material.dart';

class MobileView extends StatelessWidget {
  const MobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(MediaQuery.of(context).size.width.toString()));
  }
}
