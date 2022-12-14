import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

AppBar detailsAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back),
      color: Colors.white,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: [
      IconButton(
        icon: SvgPicture.asset('assets/icons/share.svg'),
        onPressed: () {},
      ),
      IconButton(
        color: Colors.white,
        icon: Icon(Icons.more_vert),
        onPressed: () {},
      )
    ],
  );
}
