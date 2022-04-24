import 'package:flutter/material.dart';
import 'package:flutter_designs/widgets/background.dart';
import 'package:flutter_designs/widgets/card_grid.dart';
import 'package:flutter_designs/widgets/custom_bottom_nav.dart';
import 'package:flutter_designs/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Background
          Background(),
          //Home Body
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: CustomBottomNav(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Title
          PageTitle(),

          //Card Grid
          CardGrid(),
        ],
      ),
    );
  }
}
