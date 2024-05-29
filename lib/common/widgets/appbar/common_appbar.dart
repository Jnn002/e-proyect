import 'package:e_proyecto/utils/util_exp.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
//export de esete widget common_appbar.dart
export 'package:e_proyecto/common/widgets/appbar/common_appbar.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget{
  const TAppBar({super.key,
    this.title,
    this.actions,
    this.leadingIcon,
    this.leadingOnpressed,
    this.showBackArrow = true,

  });
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnpressed;


  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.symmetric(horizontal: TSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow 
          ? IconButton(onPressed: ()=> Get.back(), icon: const Icon(Iconsax.arrow_left)) 
          : leadingIcon != null ? IconButton(onPressed: leadingOnpressed,icon: Icon(leadingIcon)) : null,
      title: title,
      actions: actions,
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}