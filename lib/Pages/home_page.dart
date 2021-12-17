import 'package:flutter/material.dart';
import 'package:musicplayer/Variables/colors.dart' as AppColors;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.background,
      child: SafeArea(
        child: Scaffold(),
      ),
    );
  }
}
