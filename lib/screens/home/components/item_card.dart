import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final String title, shopName, svgSrc;
  final Function press;
  const ItemCard({
    Key key,
    this.title,
    this.shopName,
    this.svgSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFB0CCE1).withOpacity(0.32),
            blurRadius: 20,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 15),
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.53),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    svgSrc,
                    width: size.width * 0.18,
                  ),
                ),
                Text(title),
                SizedBox(height: 10),
                Text(
                  shopName,
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
