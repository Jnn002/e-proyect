//import 'package:e_proyecto/common/widgets/curve_edges.dart';
//import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';
//import de widgets screens_app
import 'package:e_proyecto/screens/screens_app/widgets_exp_app.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(child:Column(
              //area de header, header azul
              children: [

              ],
              ),
              ),
          ],
        ), 
      ),
    );
  }
}