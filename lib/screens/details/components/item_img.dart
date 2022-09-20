import 'package:flutter/material.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({
    Key key,
    this.imgSrc,
  }) : super(key: key);

  final String imgSrc;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image(
      image: AssetImage('assets/images/burger.png'),
      height: size.height * 0.25,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
