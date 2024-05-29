import 'package:flutter/material.dart';

class TProductTittleText extends StatelessWidget {
  const TProductTittleText({super.key, 
  required this.title, 
  this.smallsize = false, 
  this.maxLines = 2, 
  this.textAlign = TextAlign.left
  }
  );
  final String title;
  final bool smallsize;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallsize ? Theme.of(context).textTheme.labelLarge : Theme.of(context).textTheme.titleSmall,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}