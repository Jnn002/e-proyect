import 'package:e_proyecto/common/common_exp.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';


class TGridLayour extends StatelessWidget {
  const TGridLayour({
    super.key, 
    required this.itemCount, 
    required this.itemBuilder,
    this.mainAxisAlignment = 288, 
  });
  final int itemCount;
  final double? mainAxisAlignment;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
    
      //configuracion del gridview y alimento para el itembuilder
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 2,
    mainAxisSpacing: TSizes.gridViewSpacing,
    crossAxisSpacing: TSizes.gridViewSpacing,
    mainAxisExtent: 280
    ), 
    itemBuilder:itemBuilder,
    );
  }
}
