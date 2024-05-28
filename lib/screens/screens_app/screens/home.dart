import 'package:e_proyecto/common/widgets/curve_edges.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';
//import de widgets screens_app
import 'package:e_proyecto/screens/screens_app/widgets_exp_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: TCustomCurveEdges(),
              child: Container(
                color: TColors.primary,
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  height: 400,
                  child: Stack (
                    children: [
                      Positioned(top: -150, right: -250, child: TCircularContainer( backgroundColor: TColors.textWhite.withOpacity(0.1),)),
                      Positioned(top: 100, right: -300, child: TCircularContainer( backgroundColor: TColors.textWhite.withOpacity(0.1),)),
                  /*                   Column(
                        children: [],
                      ), */
                    ],),
                ),
                ),
            ),
          ],
        ), 
      ),
    );
  }
}
