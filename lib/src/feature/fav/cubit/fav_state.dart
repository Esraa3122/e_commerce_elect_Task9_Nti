
import 'package:e_commerce_elect/src/feature/fav/model/model_fav.dart';

sealed class FavState {}

final class FavInitial extends FavState {}

final class FavLoading extends FavState {}

final class FavSuccess extends FavState {}

final class Favget extends FavState {
  List<ModelFav> favorites;

  Favget({required this.favorites});
}

final class FavDelet extends FavState {}
