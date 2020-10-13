import 'package:flutter/material.dart';
import 'package:food_delivery_ui_flutter/data/data.dart';
import 'package:food_delivery_ui_flutter/screens/cart_screen.dart';
import 'package:food_delivery_ui_flutter/widgets/recent_orders.dart';
import 'package:food_delivery_ui_flutter/widgets/restaurants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Delivery"),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.person,
          ),
          iconSize: 30.0,
          onPressed: () {},
        ),
        actions: [
          FlatButton(
            child: Center(
                child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartScreen()));
                  },
                  icon: Hero(
                    tag: "cart",
                    child: Icon(
                      Icons.shopping_cart,
                      size: 30.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "${currentUser.cart.length}",
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ],
            )),
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                hintText: "Search Food or Restaurants",
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 0.8,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 0.8, color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.all(Radius.circular(40.0))),
                prefixIcon: Icon(
                  Icons.search,
                  size: 30.0,
                ),
                suffixIcon: IconButton(
                  onPressed: () {
                    _controller.clear();
                  },
                  icon: Icon(
                    Icons.close,
                    size: 30.0,
                  ),
                ),
              ),
            ),
          ),
          RecentOrders(),
          Restaurants(),
        ],
      ),
    );
  }
}
