import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_portfolio_app/model/designer.dart';
import 'package:ui_portfolio_app/platform/mobile.dart';

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
      theme: ThemeData(hoverColor: Colors.black
          // primarySwatch: Colors.grey,

          ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // late final Designer designer;
  Future<Designer> readJson() async {
    final String response = await rootBundle.loadString('assets/model.json');
    final Map<String, dynamic> data = jsonDecode(response);
    return Designer.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder(
        future: readJson(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                // if (constraints.maxWidth >= 600) {
                //   return const DesktopView();
                // } else {
                //   return const MobileView();
                // }

                return Container(
                  margin: const EdgeInsets.all(8),
                  child: MobileView(designer: snapshot.data!),
                );
              },
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
