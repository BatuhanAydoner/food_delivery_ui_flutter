import 'package:flutter/material.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;

  QuantitySelector({this.quantity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110.0,
      height: 40.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          IconButton(
              icon: Icon(
                Icons.remove,
                size: 20.0,
              ),
              onPressed: () {}),
          Text(
            '$quantity',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
          IconButton(
              icon: Icon(
                Icons.add,
                size: 20.0,
              ),
              onPressed: () {}),
        ],
      ),
    );
  }
}
