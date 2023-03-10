import 'package:flutter/material.dart';
import 'package:panucci_ristorante/components/food_item.dart';

import '../cardapio.dart';

class FoodMenu extends StatelessWidget {
  const FoodMenu({Key? key}) : super(key: key);
  final List items = comidas;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: CustomScrollView(
        slivers: <Widget>[
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                'Menu',
                style: TextStyle(fontFamily: "Caveat", fontSize: 32),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return FoodItem(itemTitle: items[index]['name'],
                  itemPrice: items[index]['price'],
                  imageURI: items[index]['image']);
            },
                childCount: items.length),)
        ],
      ),
    );
  }
}
