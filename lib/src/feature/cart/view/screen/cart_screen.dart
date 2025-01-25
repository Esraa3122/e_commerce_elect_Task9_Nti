import 'package:e_commerce_elect/src/feature/cart/cubit/cart_cubit.dart';
import 'package:e_commerce_elect/src/feature/cart/cubit/cart_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit()..addToCartCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Cards"),
        ),
        body: BlocBuilder<CartCubit, CartState>(
          builder: (context, state) {
            if (state is CartGetSuccess) {
              return ListView.builder(
                itemCount: state.listscaR.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(state.listscaR[index].image),
                      ),
                      title: Text("${state.listscaR[index].price.toString()} :: ${state.listscaR[index].quantity.toString()}"),
                      subtitle:
                          Text(state.listscaR[index].totalPrice.toString()),
                      trailing: IconButton(
                        onPressed: () {
                          CartCubit.get(context)
                              .removeFromCartCubit(productId: state.listscaR[index].id);
                        },
                        icon: const Icon(
                          Icons.delete_forever,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  );
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
