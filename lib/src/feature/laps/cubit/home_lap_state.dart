import 'package:e_commerce_elect/src/feature/laps/model/model.dart';

sealed class HomeLapState {}

final class HomeLapInitial extends HomeLapState {}

final class HomeLapSucces extends HomeLapState {
  List<ModelLapCategory> listLap;
  HomeLapSucces({required this.listLap });
}

final class HomeLapLoading extends HomeLapState {}
