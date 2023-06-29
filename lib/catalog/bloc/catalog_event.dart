part of 'catalog_bloc.dart';

@immutable
abstract class CatalogEvent {}

class CatalogInitialEvent extends CatalogEvent {}

class CatalogClickButtonAddEvent extends CatalogEvent {
  final Product clickedProduct;

  CatalogClickButtonAddEvent({required this.clickedProduct});
}

class CatalogClickButtonCartEvent extends CatalogEvent {}
