import 'package:bezier_animation/pages/login.dart';
import 'package:bezier_animation/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(BezierAnimationApp());

class BezierAnimationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.moldyGreen,
      //systemNavigationBarColor: AppColors.moldyGreen,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bezier Animations',
      theme: ThemeData(
        primarySwatch: AppColors.moldyGreen,
      ),
      home: LoginPage(),
    );
  }
}

