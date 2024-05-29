import 'package:flutter/material.dart';

class TProductpriceText extends StatelessWidget {
  const TProductpriceText({
    super.key, 
    this.currencySign = 'Q', 
    required this.price, 
    this.isLarge = false, 
    this.maxlines = 1, 
    this.lineThrough = false,
  });
  final String currencySign, price;
  final int maxlines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxlines,
      overflow: TextOverflow.ellipsis,
      style: isLarge
      ? Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null)
      : Theme.of(context).textTheme.headlineSmall!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}