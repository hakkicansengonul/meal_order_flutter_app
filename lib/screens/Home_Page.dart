import 'package:flutter/material.dart';
import 'package:meal_order_flutter_app/Animation/Fade_Animation.dart';
import 'package:meal_order_flutter_app/dataMealOrder/DiscoverFood_Page.dart';
import 'package:meal_order_flutter_app/screens/details_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50.0,
            ),
            FadeAnimation(
              1.0,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 55.0,
                      width: 55.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://img.icons8.com/bubbles/2x/menu-2.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Text(
                      "Foodys",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.amber, width: 1.5),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars.githubusercontent.com/u/56843071?v=4"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            FadeAnimation(
              1.0,
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Discover Food",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            FadeAnimation(
              1.1,
              Container(
                height: 300.0,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: DiscoverFoodList.length,
                    itemBuilder: (context, index) {
                      return DiscoverFoodList[index];
                    }),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FadeAnimation(
              1.0,
              Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0),
                ),
              ),
            ),
            FadeAnimation(
              1.1,
              Container(
                height: 300.0,
                width: double.infinity,
                // color: Colors.orange,
                child: GridView.count(
                  childAspectRatio: 1.0,
                  primary: false,
                  padding: EdgeInsets.all(15),
                  crossAxisSpacing: 13,
                  mainAxisSpacing: 13,
                  crossAxisCount: 3,
                  children: <Widget>[
                    CategoriesChilren(
                        "https://cdn4.iconfinder.com/data/icons/social-media-2273/64/social_media_network_online_maps-256.png",
                        "Closest"),
                    CategoriesChilren(
                        "https://cdn2.iconfinder.com/data/icons/hot-sale-flat/64/pricetag_discount_sale_shop-256.png",
                        "Discount"),
                    CategoriesChilren(
                        "https://cdn3.iconfinder.com/data/icons/food-set-3/91/Food_C218-256.png",
                        "Fast Food"),
                    CategoriesChilren(
                        "https://cdn3.iconfinder.com/data/icons/street-food-and-food-trucker-1/64/fried-chicken-thigh-fast-food-256.png",
                        "Chicken"),
                    CategoriesChilren(
                        "https://cdn2.iconfinder.com/data/icons/drink-and-beverages-1/128/Drink-02-256.png",
                        "Beverages"),
                    CategoriesChilren(
                        "https://cdn4.iconfinder.com/data/icons/breakfast-14/48/broccoli-256.png",
                        "Salads"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget CategoriesChilren(String imgUrl, String title) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey[200],
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.3), offset: Offset(0.0, 4.0))
        ]),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60.0,
          width: 60.0,
          decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(imgUrl), fit: BoxFit.cover),
          ),
        ),
        Text(
          title,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
