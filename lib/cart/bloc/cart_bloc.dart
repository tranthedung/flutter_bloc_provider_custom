import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_provider_custom12/cart/data/cart_items.dart';
import 'package:meta/meta.dart';

import '../../catalog/model/products_data_model.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
    on<CartRemoveFromCartEvent>(cartRemoveFromCartEvent);
  }

  FutureOr<void> cartInitialEvent(
      CartInitialEvent event, Emitter<CartState> emit) {
    emit(CartSuccessState(cartItems: cartItems));
  }

  FutureOr<void> cartRemoveFromCartEvent(
      CartRemoveFromCartEvent event, Emitter<CartState> emit) {
    cartItems.remove(event.product);
    
    emit(CartSuccessState(cartItems: cartItems));
    
  }
}
