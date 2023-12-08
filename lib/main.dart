import 'package:bank_app/AppColors.dart';
import 'package:flutter/material.dart';

import 'BankAppBar.dart';
import 'InterestsWidget.dart';
import 'ProfileWidget.dart';
import 'SubscriptionsWidget.dart';
import 'TariffsWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor App',
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backGroundSecondary,
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const BankAppBar(),
        body: ListView(
          children: const <Widget>[
            ProfileWidget(
              name: "Екатерина",
              image: AssetImage("images/avatar.png"),
            ),
            SubscriptionsWidget(),
            TariffsWidget(),
            InterestsWidget(),
            SizedBox(height: 20)
          ],
        ));
  }
}


