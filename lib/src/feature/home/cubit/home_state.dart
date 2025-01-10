
import 'package:e_commerce_elect/src/feature/home/model/model/home_modle.dart';

sealed class ElectronicsState {}

final class ElectronicsInitial extends ElectronicsState {}

final class ElectronicsLoading extends ElectronicsState {}

final class ElectronicsSuccess extends ElectronicsState {
  List<ModelElectronics> getdataElectronics;
  ElectronicsSuccess({required this.getdataElectronics});
}

final class ElectronicsFailure extends ElectronicsState {
  final String errorMessage;
  ElectronicsFailure({required this.errorMessage});
}

