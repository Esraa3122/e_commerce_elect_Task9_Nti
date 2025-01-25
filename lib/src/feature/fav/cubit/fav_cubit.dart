import 'package:e_commerce_elect/src/feature/fav/cubit/fav_state.dart';
import 'package:e_commerce_elect/src/feature/fav/data/data_fav.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavCubit extends Cubit<FavState> {
  static FavCubit get(context) => BlocProvider.of(context);
  FavCubit() : super(FavInitial());

  final FavData favData = FavData();
  addFavCubit({required String productId}) {
    emit(FavLoading());
   favData.addFav(productId: productId);
    emit(FavSuccess());
    // getAllFav();
  }

  getAllFav() async {
    emit(FavLoading());
    var success = await favData.getAllFav();
    emit(Favget(favorites: success));
  }

 removeFromFavCubit({required String productId}){
    emit(FavLoading());
    favData.deletFav(productId: productId);
    // emit(FavDelet());
    getAllFav();
  }
}
