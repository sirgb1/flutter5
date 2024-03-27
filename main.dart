import 'package:flutter/material.dart';
import 'package:flutter5/product_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CarList(),
    );
  }
}

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
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Cart()));
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


class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Корзина', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
          backgroundColor: Colors.grey,
        ),
        body: GridView.count(
            crossAxisCount: 2,
            children: List.generate(cart.length, (index) => cart[index])
        )
    );
  }
}


class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Избранное', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.pink[200],
        ),
        body: GridView.count(
            crossAxisCount: 2,
            children: List.generate(favorite.length, (index) => favorite[index])
        )
    );
  }
}