import 'package:flutter/material.dart';
import 'package:flutter_application1/product_card.dart';
import 'package:intl/intl.dart';

class CartedCar extends StatefulWidget {
  final int id;
  final String title;
  final int price;
  final String imageUrl1;
  final String imageUrl2;
  final String imageUrl3;
  final String description;
  final String videoUrl;
  late int quantity;
  final Function(int) onCounterChanged;
  //final bool isInCart;
  //final bool isInFavorite;

  CartedCar({
    Key? key,
    required this.id,
    required this.title,
    required this.price,
    required this.imageUrl1,
    required this.imageUrl2,
    required this.imageUrl3,
    required this.description,
    required this.videoUrl,
    required this.quantity,
    this.onCounterChanged = _defaultOnCounterChanged,
    //required this.isInCart,
    //required this.isInFavorite
  }) : super(key: key);

  static void _defaultOnCounterChanged(int value) {}

  @override
  _CartedCarState createState() => _CartedCarState();
}

class _CartedCarState extends State<CartedCar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailedCard(
              id: widget.id,
              imageUrl1: widget.imageUrl1,
              imageUrl2: widget.imageUrl2,
              imageUrl3: widget.imageUrl3,
              title: widget.title,
              description: widget.description,
              price: widget.price,
              videoUrl: widget.videoUrl,
            ),
          ),
        );
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 2,
              child: Image.network(
                widget.imageUrl1,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                child: Text(
                  NumberFormat('##00,000').format(widget.price) + ' ₽',
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        if (widget.quantity > 0) {
                          widget.quantity--;
                          widget.onCounterChanged(widget.quantity);
                        }
                      });
                    },
                  ),
                  Text(
                    '${widget.quantity}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        widget.quantity++;
                        widget.onCounterChanged(widget.quantity);
                      });
                    },
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}