import 'package:flutter/material.dart';
import 'package:food_delivery_ui_flutter/data/data.dart';
import 'package:food_delivery_ui_flutter/models/restaurant.dart';
import 'package:food_delivery_ui_flutter/screens/restaurant_screen.dart';

class Restaurants extends StatelessWidget {
  Widget _buildRestaurantItem(
      BuildContext context, List<Restaurant> restaurant) {
    List<Widget> items = [];

    restaurant.forEach((restaurant) {
      items.add(GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => RestaurantScreen(
                        restaurant: restaurant,
                      )));
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey, width: 1.0),
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          margin: EdgeInsets.all(10.0),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                child: Hero(
                  tag: restaurant.name,
                  child: Image(
                    fit: BoxFit.cover,
                    image: AssetImage(restaurant.imageUrl),
                    width: 120,
                    height: 120,
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    restaurant.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: List.generate(restaurant.rating, (index) {
                      return Icon(
                        Icons.star,
                        color: Colors.yellow,
                      );
                    }),
                  ),
                  Text(
                    restaurant.address,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ));
    });
    return Column(
      children: items,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 10.0, bottom: 0.0),
          child: Text(
            "Nearby Restaurant",
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.2),
          ),
        ),
        _buildRestaurantItem(context, restaurants),
      ],
    );
  }
}
