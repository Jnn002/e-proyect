import 'package:e_proyecto/common/common_exp.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';

class THomeCategories extends StatelessWidget {
  const THomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder:(_, index){
          return TVerticalImageText(
            title: 'Zapatos',
            image: TImages.shoeIcon,
            onTap: (){},
          );
        }
      
      ),
    );
  }
}
