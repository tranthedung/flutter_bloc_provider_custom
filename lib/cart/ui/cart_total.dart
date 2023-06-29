import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc_provider_custom12/cart/data/cart_items.dart';
import 'package:flutter_bloc_provider_custom12/catalog/model/products_data_model.dart';

class CartTotal extends StatelessWidget {
 

  CartTotal({super.key});

  double x = cartItems.length * 2.9;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Total:',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              '\$ $x',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Buying not supported yet'),
                    duration: Duration(seconds: 1),
                  ),
                );
              },
              child: Text(
                'Buy',
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 222, 201, 7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
