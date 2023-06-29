import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../cart/data/cart_items.dart';
import '../model/products_data_model.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc() : super(CatalogInitial()) {
    on<CatalogInitialEvent>(catalogInitialEvent);
    on<CatalogClickButtonAddEvent>(catalogClickButtonAddEvent);
    on<CatalogClickButtonCartEvent>(catalogClickButtonCartEvent);
  }

  FutureOr<void> catalogInitialEvent(
      CatalogInitialEvent event, Emitter<CatalogState> emit) async {
    emit(CatalogLoadingState());
    await Future.delayed(Duration(seconds: 1));
    emit(CatalogLoadedSuccessState(products: []));
  }

  FutureOr<void> catalogClickButtonAddEvent(
      CatalogClickButtonAddEvent event, Emitter<CatalogState> emit) {
    print('button add is clicked');
    cartItems.add(event.clickedProduct);
    emit(CatalogClickedAddState());
  }

  FutureOr<void> catalogClickButtonCartEvent(
      CatalogClickButtonCartEvent event, Emitter<CatalogState> emit) {
    print('Button Cart is Clicked');
    emit(CatalogClickedCartState());
  }
}
