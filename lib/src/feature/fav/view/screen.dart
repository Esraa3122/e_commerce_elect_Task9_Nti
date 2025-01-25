import 'package:e_commerce_elect/src/feature/fav/cubit/fav_cubit.dart';
import 'package:e_commerce_elect/src/feature/fav/cubit/fav_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavCubit()..getAllFav(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Fav"),
        ),
        body: BlocBuilder<FavCubit, FavState>(
          builder: (context, state) {
            if (state is Favget) {
              return ListView.builder(
                itemCount: state.favorites.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(state.favorites[index].image),
                      ),
                      title: Text(state.favorites[index].name),
                      subtitle:
                          Text(state.favorites[index].price.toString()),
                      trailing: IconButton(
                        onPressed: () {
                          FavCubit.get(context).removeFromFavCubit(productId: state.favorites[index].id);
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