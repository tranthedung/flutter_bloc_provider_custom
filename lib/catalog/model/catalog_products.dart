import 'package:flutter/material.dart';
import 'package:flutter_bloc_provider_custom12/catalog/bloc/catalog_bloc.dart';
import 'package:flutter_bloc_provider_custom12/catalog/model/products_data_model.dart';

class CatalogProduct extends StatelessWidget {
  const CatalogProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
          itemCount: Product.products.length,
          itemBuilder: (BuildContext context, index) {
            return CatalogProductCard(
              index: index,
              catalogBloc: CatalogBloc(),
              product: Product(
                  name: Product.products[index].name,
                  price: Product.products[index].price,
                  imageUrl: Product.products[index].imageUrl),
            );
          }),
    );
  }
}

class CatalogProductCard extends StatelessWidget {
  final int index;
  final Product product;
  final CatalogBloc catalogBloc;
  CatalogProductCard(
      {super.key,
      required this.index,
      required this.product,
      required this.catalogBloc});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(Product.products[index].imageUrl),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            Product.products[index].name,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {
              catalogBloc
                  .add(CatalogClickButtonAddEvent(clickedProduct: product));
            },
            icon: Icon(Icons.add_shopping_cart),
          ),
        ],
      ),
    );
  }
}
