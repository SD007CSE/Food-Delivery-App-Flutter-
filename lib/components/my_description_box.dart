import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);

    return Container(
      padding: const EdgeInsets.all(25),
      margin: EdgeInsets.only(left:25, right: 25, bottom: 25),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.secondary,
        ),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '\$0.99',
                style: myPrimaryStyle,
              ),
              Text(
                'Delivery Fee',
                style: mySecondaryStyle,
              ),
            ],
          ),
          Column(
            children: [
              Text('15-30 min',
              style: myPrimaryStyle,
              ),
              Text(
                'Delivery Time',
                style: mySecondaryStyle,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
