import 'package:flutter/material.dart';
import 'package:flutter_bloc_provider_custom12/cart/bloc/cart_bloc.dart';
import 'package:flutter_bloc_provider_custom12/catalog/model/products_data_model.dart';

class CartTileWidget extends StatelessWidget {
  final Product product;
  final CartBloc cartBloc;
  const CartTileWidget(
      {super.key, required this.product, required this.cartBloc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Icon(Icons.check),
          const SizedBox(
            width: 20,
          ),
          Text(
            product.name,
            style: const TextStyle(fontSize: 18, color: Colors.black),
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {
              cartBloc.add(CartRemoveFromCartEvent(product: product));
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Remove items'),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            icon: Icon(Icons.remove),
          ),
          // Text(product.price.toString()),
          // IconButton(
          //     onPressed: () {

          //     },
          //     icon: Icon(Icons.add_circle)),
        ],
      ),
    );
  }
}
