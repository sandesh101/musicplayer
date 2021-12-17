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
        child: Scaffold(
          body: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageIcon(
                      AssetImage('assets/images/menu.png'),
                      size: 24,
                      // color: Colors.black,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.search),
                        const SizedBox(width: 10),
                        const Icon(Icons.notifications),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
