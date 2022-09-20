import 'package:flutter/material.dart';

import '../../components/bottom_navbar.dart';
import 'components/app_bar.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: BottomNavbar(),
      body: Body(),
    );
  }
}
