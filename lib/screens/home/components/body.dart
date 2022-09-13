import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/constants.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
          decoration: BoxDecoration(
            border: Border.all(
              color: ksecondaryColor.withOpacity(0.32),
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              icon: SvgPicture.asset('assets/icons/search.svg'),
              hintText: 'Search Here',
              hintStyle: TextStyle(
                color: ksecondaryColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
