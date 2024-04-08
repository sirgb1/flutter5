import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_application1/cars_in_cart.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_application1/product_card.dart';

class Cart extends StatefulWidget {
  final List<CartedCar> cart;

  Cart({required this.cart});

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  double totalSum = 0;

  @override
  void initState() {
    super.initState();
    calculateTotalSum();
  }

  void calculateTotalSum() {
    totalSum = 0;
    for (var item in widget.cart) {
      totalSum += item.price * item.quantity;
    }
  }

  @override
  Widget build(BuildContext context) {
    double totalSum = 0;

    for (var i in cart) {
      totalSum += i.price * i.quantity;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Корзина', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 1,
              children: widget.cart.map((item) {
                return CartedCar(
                  id: item.id,
                  title: item.title,
                  price: item.price,
                  imageUrl1: item.imageUrl1,
                  imageUrl2: item.imageUrl2,
                  imageUrl3: item.imageUrl3,
                  videoUrl: item.videoUrl,
                  description: item.description,
                  quantity: item.quantity,
                  onCounterChanged: (value) {
                    setState(() {item.quantity = value;});
                    calculateTotalSum();
                  },
                );
              }).toList(),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Сумма: ' + NumberFormat('##00,000').format(totalSum) + ' ₽'),
                  ElevatedButton(
                    child: Text('Купить'),
                    onPressed: () {
                      cart.clear();
                      Fluttertoast.showToast(msg: 'Покупка была сделана!');
                      Navigator.of(context).pop();
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Cart(cart: cart,),
                      ));
                    },
                  )
                ],
              )
          )
        ],
      ),
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