import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.onPressed,
    required this.title,
    this.buttonTitle = 'Ver todo',
    this.textColor,
    this.showActionsButton = true,
  });
  final String buttonTitle, title;
  final Color? textColor;
  final bool showActionsButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
      Text(title, style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor), maxLines: 1, overflow: TextOverflow.ellipsis,),
      if (showActionsButton) TextButton(onPressed: onPressed, child:  Text(buttonTitle)) 
    ],);
  }
}

