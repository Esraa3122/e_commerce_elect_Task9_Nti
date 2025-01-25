import 'package:e_commerce_elect/src/feature/cart/cubit/cart_cubit.dart';
import 'package:e_commerce_elect/src/feature/laps/cubit/home_lap_cubit.dart';
import 'package:e_commerce_elect/src/feature/laps/cubit/home_lap_state.dart';
import 'package:e_commerce_elect/src/feature/cart/view/screen/cart_screen.dart';
import 'package:e_commerce_elect/src/feature/fav/cubit/fav_cubit.dart';
import 'package:e_commerce_elect/src/feature/fav/view/screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomeLabCat extends StatelessWidget {
  const HomeLabCat({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeLapCubit()..getAllLapCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("HomeLab"),
           leading: IconButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const FavScreen()));
          }, icon: const Icon(Icons.favorite,color: Colors.red,)),
        ),
        body: BlocBuilder<HomeLapCubit, HomeLapState>(
          builder: (context, state) {
            if (state is HomeLapSucces) {
              return ListView.builder(
                itemCount: state.listLap.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(state.listLap[index].image),
                      ),
                      title: Row(
                        children: [
                          Text(state.listLap[index].status),
                          IconButton(
                              onPressed: () {
                                FavCubit.get(context).addFavCubit(
                                    productId: state.listLap[index].id);
                              },
                              icon: const Icon(Icons.favorite))
                        ],
                      ),
                      subtitle: Text(state.listLap[index].description),
                      trailing: IconButton(
                          onPressed: () {
                            CartCubit.get(context).addCartCubit(
                                productId: state.listLap[index].id);
                          },
                          icon: const Icon(Icons.shopping_cart)),
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
        floatingActionButton: FloatingActionButton(
          shape: const CircleBorder(),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CartScreen()));
          },
          child: const Icon(Icons.shopping_cart_checkout_sharp),
        ),
      ),
    );
  }
}
