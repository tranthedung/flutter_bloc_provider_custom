part of 'catalog_bloc.dart';

@immutable
abstract class CatalogState {}

abstract class CatalogActionState extends CatalogState {}

class CatalogInitial extends CatalogState {}

class CatalogLoadingState extends CatalogState {}

class CatalogLoadedSuccessState extends CatalogState {
  final List<Product> products;

  CatalogLoadedSuccessState({required this.products});
}

class CatalogErrorState extends CatalogState {}

class CatalogClickedAddState extends CatalogActionState {}

class CatalogClickedCartState extends CatalogActionState {}
