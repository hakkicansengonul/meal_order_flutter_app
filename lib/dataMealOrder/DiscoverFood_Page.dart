import 'package:flutter/material.dart';
import 'package:meal_order_flutter_app/screens/details_screen.dart';

List DiscoverFoodList = [
  DiscoverFood(
      "https://cdn.pixabay.com/photo/2015/12/08/00/26/food-1081707__480.jpg",
      6.40),
  DiscoverFood(
      "https://cdn.pixabay.com/photo/2014/04/22/02/56/pizza-329523__480.jpg",
      16.20),
  DiscoverFood(
      "https://cdn.pixabay.com/photo/2018/07/14/21/30/club-sandwich-3538455__480.jpg",
      6.40),
  DiscoverFood(
      "https://cdn.pixabay.com/photo/2014/11/05/15/57/salmon-518032__480.jpg",
      6.40),
];

class DiscoverFood extends StatelessWidget {
  final String imgUrl;
  final double price;

  const DiscoverFood(this.imgUrl, this.price);
  @override
  Widget build(BuildContext context) {
    return Material(
        child: GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => DetailsPage(imgUrl)));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: Container(
          height: 300.0,
          width: 230.0,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover),
            //color: Colors.blue,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 240.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Cheese Burger",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0),
                    ),
                    Text(
                      "\$$price",
                      style: TextStyle(color: Colors.white, fontSize: 18.0),
                    )
                  ],
                ),
                Container(
                  height: 30.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Center(
                    child: Text(
                      "Add",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
