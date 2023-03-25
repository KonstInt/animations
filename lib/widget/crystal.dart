import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/constants.dart';
import 'custom_card.dart';

class Crystal extends StatelessWidget {
  const Crystal({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15.5, top: 20),
      child: CustomCard(
        mWith: 165.09,
        mHeigth: 167.63,
        rotate: 1.51,
        mChildren: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Баланс кристаллов: 200 💎",
                style: Theme.of(context).textTheme.headline1?.copyWith(
                    letterSpacing: -0.33,
                    fontWeight: FontWeight.w700,
                    fontSize: 19),
              ),
              const Spacer(),
              TextButton(
                onPressed: () => {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(kButtonColor),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ))),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Text(
                    "Потратить",
                    style: Theme.of(context).textTheme.headline2?.copyWith(
                        letterSpacing: -0.33,
                        fontWeight: FontWeight.w600,
                        fontSize: 15),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
