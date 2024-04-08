import 'package:flutter/material.dart';
import 'package:flutter_application1/favorite_cart.dart';
import 'package:flutter_application1/product_card.dart';

class CarList extends StatelessWidget {
  const CarList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Отечественный автопром', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.brown[200],
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Cart(cart: cart)));
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Favorite()));
            },
          )
        ],
      ),
      body: GridView.count(
          crossAxisCount: 2,
          children: List.generate(
              10, (index) => carList[index]
          )
      ),
    );
  }
}