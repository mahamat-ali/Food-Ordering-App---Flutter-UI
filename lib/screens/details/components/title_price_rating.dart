import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../../../constants.dart';

class TtitlePriceRating extends StatelessWidget {
  final int price, nomOfReviews;
  final double rating;
  final String name;
  final RatingChangeCallback onRatingChange;

  const TtitlePriceRating({
    Key key,
    this.price,
    this.nomOfReviews,
    this.rating,
    this.name,
    this.onRatingChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(color: Colors.black),
                ),
                SizedBox(height: 10),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SmoothStarRating(
                      onRated: onRatingChange,
                      rating: rating,
                      color: kPrimaryColor,
                      borderColor: kPrimaryColor,
                    ),
                    SizedBox(width: 10),
                    Text("$nomOfReviews reviews")
                  ],
                )
              ],
            ),
          ),
          priceTag(context, price: price)
        ],
      ),
    );
  }

  ClipPath priceTag(BuildContext context, {int price}) {
    return ClipPath(
      clipper: PriceClipper(),
      child: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.symmetric(vertical: 15),
        width: 65,
        height: 66,
        color: kPrimaryColor,
        child: Text(
          "\$$price",
          style: Theme.of(context)
              .textTheme
              .titleMedium
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class PriceClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
