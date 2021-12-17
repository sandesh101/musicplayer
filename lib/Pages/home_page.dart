import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:musicplayer/Variables/colors.dart' as AppColors;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List popularBooks = [];
  ReadBookData() async {
    await DefaultAssetBundle.of(context)
        .loadString('assets/json/popularBooks.json')
        .then((s) {
      setState(() {
        popularBooks = json.decode(s);
      });
    });
  }

  @override
  void initState() {
    super.initState();
    ReadBookData();
  }

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
              SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 20,
                    ),
                    child: const Text(
                      'Popular Books',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                height: 180,
                child: Stack(
                  children: [
                    Positioned(
                      left: -20,
                      top: 0,
                      right: 0,
                      child: SizedBox(
                        height: 180,
                        child: PageView.builder(
                          controller: PageController(viewportFraction: 0.8),
                          itemCount:
                              popularBooks == null ? 0 : popularBooks.length,
                          itemBuilder: (_, i) {
                            return Container(
                              height: 180,
                              width: MediaQuery.of(context).size.width,
                              margin: const EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  image: AssetImage(popularBooks[i]['img']),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
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
