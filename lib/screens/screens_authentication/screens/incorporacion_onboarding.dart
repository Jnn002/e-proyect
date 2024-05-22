import 'package:flutter/material.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:e_proyecto/utils/helpers/helper_functions.dart';

class IncorporacionOnboarding extends StatelessWidget {

  const IncorporacionOnboarding({
    super.key
  });
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              Column(
                children: [
                  Image(
                    height: THelperfunctions.getScreenHeight(context) * 0.6,
                    width: THelperfunctions.getScreenWidth(context) * 0.8,
                    image: const AssetImage('assets/images/onboarding1.png'),
                    )
                ],
              )
            ],
          )
        ],

      )
    );
  }
} 

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

