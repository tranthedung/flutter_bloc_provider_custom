import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_provider_custom12/catalog/bloc/catalog_bloc.dart';

import '../../cart/ui/cart.dart';
import 'catalog_products.dart';


class CataLog extends StatefulWidget {
  const CataLog({super.key});

  @override
  State<CataLog> createState() => _CataLogState();
}

class _CataLogState extends State<CataLog> {
  @override
  void initState() {
    catalogBloc.add(CatalogInitialEvent());
    super.initState();
  }

  final CatalogBloc catalogBloc = CatalogBloc();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CatalogBloc, CatalogState>(
      bloc: catalogBloc,
      listenWhen: (previous, current) => current is CatalogActionState,
      buildWhen: (previous, current) => current is! CatalogActionState,
      listener: (context, state) {
        if (state is CatalogClickedCartState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Cart()));
        } else if (state is CatalogClickedAddState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Item Carted sao k hien nhe')));
        }
      },
      builder: (context, state) {
        switch (state.runtimeType) {
          case CatalogLoadingState:
            return Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          case CatalogLoadedSuccessState:
            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.teal[400],
                title: const Text(
                  'CataLog',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      catalogBloc.add(CatalogClickButtonCartEvent());
                    },
                    icon: const Icon(Icons.shopping_cart_outlined),
                  ),
                ],
              ),
              body: SafeArea(
                child: Column(
                  children: [
                    CatalogProduct(),
                  ],
                ),
              ),
            );
          case CatalogErrorState:
            return Scaffold(
              body: Center(
                child: Text('Error'),
              ),
            );
          default:
            return SizedBox();
        }
      },
    );
  }
}
