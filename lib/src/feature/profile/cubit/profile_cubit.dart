import 'package:e_commerce_elect/src/feature/profile/cubit/profile_state.dart';
import 'package:e_commerce_elect/src/feature/profile/data/data_profile.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(dataProfile) : super(ProfileInitial());
 final DataProfile dataProfile = DataProfile();
  postProfileData() async{
    emit(ProfileLoading());
    var user =await dataProfile.getProfile();
    emit(ProfileSuccess(profileModel: user));
  }
}


