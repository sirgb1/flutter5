import 'package:flutter/material.dart';
import 'package:flutter_application1/product_card.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_application1/cars_in_cart.dart';
import 'package:flutter_application1/signup_page.dart';
import 'package:flutter_application1/car_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    // Pages for each bottom navigation item
    SignupPage(),
    CarList(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to the corresponding page when a bottom navigation item is clicked
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => CarList()));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupPage()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.car_rental),
            label: 'Список товаров',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Личный кабинет',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}