import 'package:flutter/material.dart';
import 'package:food_app/constants.dart';

import '../../../components/search_box.dart';
import 'category_list.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchBox(
          onChanged: (value) {
            print(value);
          },
        ),
        const CategoryList()
      ],
    );
  }
}
