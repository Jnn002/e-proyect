import 'package:flutter/material.dart';
import 'package:e_proyecto/utils/util_exp.dart';
import 'package:e_proyecto/common/common_exp.dart';

//WIDGET EXTRAIDO DE PANTALLA HOME, LUEGO DE AÑADIRLE MÁS AGREGADOS

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelSmall!.apply(color: TColors.grey)),
          Text(TTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.white)),
          ],
      ),
      actions: [
        TCartCounterIcon(
          onPressed: (){},
          iconColor: TColors.white,
        ),
      ],
    );
  }
}