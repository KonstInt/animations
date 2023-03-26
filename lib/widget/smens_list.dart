import 'package:animations/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:io' show Platform;
import '../models/smena.dart';
import 'custom_card.dart';

class Smens extends StatefulWidget {
  const Smens({super.key});

  @override
  State<Smens> createState() => _SmensState();
}

class _SmensState extends State<Smens> {
  final List<Smena> smens = [
    Smena(
        isGo: true,
        name: "1 Смена 2022",
        corp: 3,
        otr: 2,
        chatLink: "chatLink",
        newMessages: 3),
    Smena(
        isGo: false,
        name: "2 Смена 2022",
        corp: 2,
        otr: 1,
        chatLink: "chatLink",
        newMessages: 3)
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Platform.isAndroid?210.h:190.h,
      margin: EdgeInsets.only(top: 30).r,
      child: Expanded(
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: smens.length,
            itemBuilder: (BuildContext context, int index) {
              return buildRow(smens[index], context);
            }),
      ),
    );
  }
}

Widget buildRow(Smena smen, BuildContext context) {
  return Container(
    padding: EdgeInsets.all(15).r,
    child: CustomCard(
        mWith: 354.w,
        mHeigth: 168.13.h,
        rotate: 2.76,
        mChildren: Container(
          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              smen.isGo
                  ? Text("Сейчас идёт",
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                          color: kTextSpec1Color,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.33.sp))
                  : Text("Уже скоро",
                      style: Theme.of(context).textTheme.headline1?.copyWith(
                          color: kSecondaryTextColor,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.33.sp)),
              Container(
                margin: EdgeInsets.only(top: 5).r,
                child: Text(smen.name,
                    style: Theme.of(context).textTheme.headline1?.copyWith(
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.33)),
              ),
              Container(
                  margin: EdgeInsets.only(top: 10).r,
                  child: Row(
                    children: [
                      Text("Корпус №${smen.corp}",
                          style: Theme.of(context)
                              .textTheme
                              .headline1
                              ?.copyWith(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.33.sp)),
                      SizedBox(width: 20.w),
                      Text("Отряд №${smen.otr}",
                          style: Theme.of(context)
                              .textTheme
                              .headline1
                              ?.copyWith(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: -0.33.sp)),
                    ],
                  )),
                Container(
                  margin: EdgeInsets.only(top: 15).r,
                  width: double.infinity,
                  child: TextButton(
                  onPressed: () => {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kButtonColor),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ))),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 35, vertical: 5).r,
                    child: Text("Чат отряда(${smen.newMessages} сообщ.)", style: Theme.of(context).textTheme.headline2?.copyWith(
                        letterSpacing: -0.33.sp,
                        fontWeight: FontWeight.w600,
                        fontSize: 15.sp),),
                  ),
              ),
                )
            ],
          ),
        )),
  );
}
