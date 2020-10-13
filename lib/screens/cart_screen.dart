import 'package:flutter/material.dart';
import 'package:food_delivery_ui_flutter/data/data.dart';
import 'package:food_delivery_ui_flutter/models/order.dart';
import 'package:food_delivery_ui_flutter/widgets/quantity_selector.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  Widget _buildCartItem(Order order) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Row(
                children: [
                  Container(
                    width: 150.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      image: DecorationImage(
                          image: AssetImage(order.food.imageUrl),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 50.0,
                      margin: EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            order.food.name,
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            order.restaurant.name,
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          QuantitySelector(
                            quantity: order.quantity,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              order.food.price.toString() + "₺",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
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
        ),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) => Divider(
          height: 1.0,
          color: Colors.grey,
        ),
        itemBuilder: (context, index) {
          Order order = currentUser.cart[index];
          return _buildCartItem(order);
        },
        itemCount: currentUser.cart.length,
      ),
    );
  }
}
