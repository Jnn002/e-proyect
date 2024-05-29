import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';


class TGridLayour extends StatelessWidget {
  const TGridLayour({
    super.key, 
    required this.itemCount, 
    required this.itemBuilder,
    this.mainAxisExtent = 288, 
    //this.mainAxisExtent, 
  });
  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;
  //final double? mainAxisExtent;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
    
      //configuracion del gridview y alimento para el itembuilder
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisExtent: mainAxisExtent,
    mainAxisSpacing: TSizes.gridViewSpacing,
    crossAxisSpacing: TSizes.gridViewSpacing,
    ), 
    itemBuilder:itemBuilder,
    );
  }
}
