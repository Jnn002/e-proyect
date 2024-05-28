import 'package:flutter/material.dart';

class TSectionHeading extends StatelessWidget {
  const TSectionHeading({
    super.key,
    this.onPressed,
    required this.title,
    required this.buttonTitle,
    this.textColor,
    this.showActionsButton = false,
  });
  final String buttonTitle, title;
  final Color? textColor;
  final bool showActionsButton;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Text(title, style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor), maxLines: 1, overflow: TextOverflow.ellipsis,),
      if (showActionsButton) TextButton(onPressed: onPressed, child:  Text(buttonTitle)) 
    ],);
  }
}

