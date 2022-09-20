import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

import 'item_img.dart';
import 'order_button.dart';
import 'title_price_rating.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ItemImage(imgSrc: 'assets/images/burger.png'),
        Expanded(
          child: ItemInfo(),
        )
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          shopName(name: 'MacDonalds'),
          TtitlePriceRating(
            name: "Cheese Burger",
            nomOfReviews: 32,
            price: 16,
            rating: 4,
            onRatingChange: (ra) {
              print(ra);
            },
          ),
          Text(
            'Nulla auctor velit ac magna ultricies, a ultrices ex volutpat. Praesent rutrum lacinia tellus in placerat. Nullam est leo, suscipit eu ultricies at, posuere id tellus. Aenean eget odio ut mi fermentum mattis et eget urna. Fusce leo magna, hendrerit vel orci eget, pretium euismod ipsum. Morbi vestibulum eu magna non feugiat. Integer tincidunt nulla quam, dictum vehicula justo scelerisque eget.',
            style: TextStyle(height: 1.5),
          ),
          SizedBox(height: size.height * 0.1),
          OrderButton(size: size, press: () {})
        ],
      ),
    );
  }

  Row shopName({String name}) {
    return Row(
      children: [
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name)
      ],
    );
  }
}
