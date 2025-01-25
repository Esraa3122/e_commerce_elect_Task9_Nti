import 'package:e_commerce_elect/src/feature/profile/model/profile_model.dart';

sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}

final class ProfileLoading extends ProfileState {}

final class ProfileSuccess extends ProfileState {
  final ProfileModel profileModel;

  ProfileSuccess({required this.profileModel});
}

final class ProfileError extends ProfileState {
  final String errorMessage;

  ProfileError({required this.errorMessage});
}
