
import 'package:e_commerce_elect/src/feature/cart/model/model/model_cart_.dart';

sealed class CartState {}

final class CartInitial extends CartState {}

final class CartLoading extends CartState {}

final class CartSuccess extends CartState {}

final class CartGetSuccess extends CartState {
  List<ModelCaerts> listscaR;
  CartGetSuccess({required this.listscaR});
}

final class CartDelete extends CartState {}
