import 'package:e_commerce_elect/src/feature/cart/cubit/cart_state.dart';
import 'package:e_commerce_elect/src/feature/cart/model/data/data_cart_.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CartCubit extends Cubit<CartState> {
  CartCubit() : super(CartInitial());

  final DataCart cart = DataCart();
  static CartCubit get(context) => BlocProvider.of(context);

  addCartCubit({required String productId}) {
    emit(CartLoading());
    cart.addCart(productId: productId);
    emit(CartSuccess());
  }

   addToCartCubit() async {
    emit(CartLoading());
    var success = await cart.getAlLCarts();
    emit(CartGetSuccess(listscaR: success));
  }

   removeFromCartCubit({required String productId}) {
    emit(CartLoading());
    cart.deletCart(productId: productId);
    emit(CartDelete());
    addToCartCubit();
    
  }

  //  updateCartCubit({required String productId, required int quantity}) {
  //   emit(CartLoading());
  //   cart.upDateCarts(id: productId, quantity: quantity);
  //   addToCartCubit();
  // }
}
