import 'package:food_delivery_ui_flutter/models/food.dart';
import 'package:food_delivery_ui_flutter/models/order.dart';
import 'package:food_delivery_ui_flutter/models/restaurant.dart';
import 'package:food_delivery_ui_flutter/models/user.dart';

final _burrito =
    Food(imageUrl: 'assets/images/burrito.jpg', name: 'Burrito', price: 9.99);
final _steak =
    Food(imageUrl: 'assets/images/steak.jpg', name: 'Steak', price: 19.99);
final _pasta =
    Food(imageUrl: 'assets/images/pasta.jpg', name: 'Pasta', price: 9.99);
final _ramen =
    Food(imageUrl: 'assets/images/ramen.jpg', name: 'Ramen', price: 20.99);
final _pancakes =
    Food(imageUrl: 'assets/images/pancakes.jpg', name: 'Pancakes', price: 9.99);
final _burger =
    Food(imageUrl: 'assets/images/burger.jpg', name: 'Burger', price: 19.99);
final _pizza =
    Food(imageUrl: 'assets/images/pizza.jpg', name: 'Pizza', price: 9.99);
final _salmon = Food(
    imageUrl: 'assets/images/salmon.jpg', name: 'Salmon Salad', price: 9.99);

// Restaurants
final _restaurant0 = Restaurant(
  imageUrl: 'images/restaurant0.jpg',
  name: 'Restaurant 0',
  address: 'Bahçeşehir, Istanbul',
  rating: 5,
  menu: [_burrito, _steak, _pasta, _ramen, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant1 = Restaurant(
  imageUrl: 'images/restaurant1.jpg',
  name: 'Restaurant 1',
  address: 'Bahçeşehir, Istanbul',
  rating: 4,
  menu: [_steak, _pasta, _ramen, _pancakes, _burger, _pizza],
);
final _restaurant2 = Restaurant(
  imageUrl: 'images/restaurant2.jpg',
  name: 'Restaurant 2',
  address: 'Bahçeşehir, Istanbul',
  rating: 4,
  menu: [_steak, _pasta, _pancakes, _burger, _pizza, _salmon],
);
final _restaurant3 = Restaurant(
  imageUrl: 'images/restaurant3.jpg',
  name: 'Restaurant 3',
  address: 'Bahçeşehir, Istanbul',
  rating: 2,
  menu: [_burrito, _steak, _burger, _pizza, _salmon],
);
final _restaurant4 = Restaurant(
  imageUrl: 'images/restaurant4.jpg',
  name: 'Restaurant 4',
  address: 'Bahçeşehir, Istanbul',
  rating: 3,
  menu: [_burrito, _ramen, _pancakes, _salmon],
);

final List<Restaurant> restaurants = [
  _restaurant0,
  _restaurant1,
  _restaurant2,
  _restaurant3,
  _restaurant4,
];

// User
final currentUser = User(
  name: 'Batuhan Aydöner',
  orders: [
    Order(
      date: 'Oct 11, 2020',
      food: _steak,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Oct 11, 2020',
      food: _ramen,
      restaurant: _restaurant0,
      quantity: 3,
    ),
    Order(
      date: 'Oct 11, 2020',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
    Order(
      date: 'Oct 11, 2020',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Oct 11, 2020',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 1,
    ),
  ],
  cart: [
    Order(
      date: 'Oct 11, 2020',
      food: _burger,
      restaurant: _restaurant2,
      quantity: 2,
    ),
    Order(
      date: 'Oct 11, 2020',
      food: _pasta,
      restaurant: _restaurant2,
      quantity: 1,
    ),
    Order(
      date: 'Oct 11, 2020',
      food: _salmon,
      restaurant: _restaurant3,
      quantity: 1,
    ),
    Order(
      date: 'Oct 11, 2020',
      food: _pancakes,
      restaurant: _restaurant4,
      quantity: 3,
    ),
    Order(
      date: 'Oct 11, 2020',
      food: _burrito,
      restaurant: _restaurant1,
      quantity: 2,
    ),
  ],
);
