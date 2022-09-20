import 'package:flutter/material.dart';

import '../../../components/search_box.dart';
import 'category_list.dart';
import 'discount_card.dart';
import 'item_list.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SearchBox(
          onChanged: (value) {
            print(value);
          },
        ),
        const CategoryList(),
        ItemList(),
        DiscountCard()
      ],
    );
  }
}
