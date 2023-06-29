import 'package:flutter_bloc_provider_custom12/catalog/model/products_data_model.dart';

List<Product> cartItems = [];

double calculateTotalPrice(List<Product> items) {
  double total = 0.0;

  for (Product item in items) {
    total += item.price;
  }
  return total;
}

// double totalPrice = calculateTotalPrice(cartItems);
