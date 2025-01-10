import 'package:e_commerce_elect/src/feature/home/cubit/home_state.dart';
import 'package:e_commerce_elect/src/feature/home/model/data/data_post.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ElectronicsCubit extends Cubit<ElectronicsState> {
  ElectronicsCubit(DataElectronics dataElectronics) : super(ElectronicsInitial());

    int index = 0;

  void colorbar({required int value}){
    index = value;
    emit(ElectronicsLoading());
  }

  final DataElectronics dataElectronics = DataElectronics();
  void getDataElectronicsCubit({required String endPoint}) async {
    emit(ElectronicsLoading());
    var success = await dataElectronics.getDataElectronics(endPoint: endPoint);
    emit(ElectronicsSuccess(getdataElectronics: success));
  }
}

