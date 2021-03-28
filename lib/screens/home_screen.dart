import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:meal_order_flutter_app/screens/Home_Page.dart';

class HomeHome extends StatefulWidget {
  @override
  _HomeHomeState createState() => _HomeHomeState();
}

class _HomeHomeState extends State<HomeHome> {
  int newindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.orange,
        index: 0,
        backgroundColor: Colors.white,
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            color: Colors.white,
            size: 30.0,
          ),
          Icon(
            Icons.av_timer,
            color: Colors.white,
            size: 30.0,
          ),
          Icon(
            Icons.shopping_cart_outlined,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          setState(() {
            newindex = index;
          });
        },
      ),
      body: newindex == 0 ? HomePage() : null,
    );
  }
}
