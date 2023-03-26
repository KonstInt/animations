import 'package:animations/utils/theme.dart';
import 'package:animations/widget/balance.dart';
import 'package:animations/widget/crystal.dart';
import 'package:animations/widget/lanch.dart';
import 'package:animations/widget/level.dart';
import 'package:animations/widget/my_smens.dart';
import 'package:animations/widget/profile.dart';
import 'package:animations/widget/sections.dart';
import 'package:animations/widget/smens_list.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(411, 823),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
            theme: basicThemeData(),
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: SafeArea(
                child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [Balance(), Spacer(), Profile()],
                        ),
                        Row(
                          children: const [Spacer(), Level()],
                        ),
                        const Lanch(),
                        const Smens(),
                        Container(
                          margin: const EdgeInsets.only(
                                  left: 15.5, top: 10, right: 15)
                              .r,
                          child: Row(
                            children: [
                              const Crystal(),
                              const Spacer(),
                              Column(
                                children: const [Sections(), MySmens()],
                              )
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            ),
          );
        });
  }
}
