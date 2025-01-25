import 'package:e_commerce_elect/src/feature/laps/cubit/home_lap_state.dart';
import 'package:e_commerce_elect/src/feature/laps/data/data_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeLapCubit extends Cubit<HomeLapState> {
  HomeLapCubit() : super(HomeLapInitial());

  final LapDataCat cat = LapDataCat();
  getAllLapCubit() async {
    emit(HomeLapLoading());
    // List<LapData> lapData = cat.getAllLapData();
    var success = await cat.getAlLLap();
    emit(HomeLapSucces(listLap: success));
  }
}
