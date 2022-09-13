import 'package:flutter/material.dart';

import '../../../constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key key,
    this.isActive = false,
    this.title,
    this.press,
  }) : super(key: key);
  final bool isActive;
  final String title;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text(
              title,
              style: isActive
                  ? TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kTextColor,
                    )
                  : TextStyle(fontSize: 11),
            ),
            if (isActive)
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5),
                height: 3,
                width: 22,
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              )
          ],
        ),
      ),
    );
  }
}
