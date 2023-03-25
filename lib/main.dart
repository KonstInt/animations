import 'package:animations/models/smena.dart';
import 'package:animations/utils/constants.dart';
import 'package:animations/utils/theme.dart';
import 'package:animations/widget/balance.dart';
import 'package:animations/widget/crystal.dart';
import 'package:animations/widget/custom_card.dart';
import 'package:animations/widget/lanch.dart';
import 'package:animations/widget/level.dart';
import 'package:animations/widget/my_smens.dart';
import 'package:animations/widget/profile.dart';
import 'package:animations/widget/sections.dart';
import 'package:animations/widget/smens_list.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: basicThemeData(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Balance(),
                  Profile(),
                ],
              ),
              Row(
                children: [
                  const Spacer(),
                  Level(),
                ],
              ),
              Lanch(),
              Smens(),


              Container(
                margin: const EdgeInsets.only(left: 15.5, top: 10, right: 15),
                child: Row(
                  children: [
                    Crystal(), 
                    Spacer(),
                    Column(
                      children: [
                        Sections(),
                        MySmens()
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}



