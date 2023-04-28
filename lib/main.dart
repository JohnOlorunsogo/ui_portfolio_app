import 'package:flutter/material.dart';

import 'platform/desktop.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          // if (constraints.maxWidth >= 600) {
          //   return const DesktopView();
          // } else {
          //   return const MobileView();
          // }

          return Container(
            margin: const EdgeInsets.all(8),
            child: const DesktopView(),
          );
        },
      ),
    );
  }
}
