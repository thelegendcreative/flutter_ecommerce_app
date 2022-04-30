import 'package:flutter/material.dart';
import 'package:vulekappstore/widgets/feed_products.dart';

class Feeds extends StatelessWidget {
  const Feeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 240 / 360,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        children: List.generate(100, (index) {
          return const FeedProducts();
        }),
      ),
    );
  }
}
