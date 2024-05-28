import 'package:e_proyecto/screens/screens_app/widgets_exp_app.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';


class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
            color: TColors.primary,
            padding: const EdgeInsets.all(0),
            child: SizedBox(
              //este height, es el que módifica el tamaño "final del header"
              height: 350,
              child: Stack (
    children: [
      Positioned(top: -150, right: -250, child: TCircularContainer( backgroundColor: TColors.textWhite.withOpacity(0.1),)),
      Positioned(top: 100, right: -300, child: TCircularContainer( backgroundColor: TColors.textWhite.withOpacity(0.1),)),
      child,
      //child,
              /*                   Column(
        children: [],
      ), */
    ],),
            ),
            ),
    );
  }
}