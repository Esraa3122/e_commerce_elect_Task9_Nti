import 'dart:convert';
import 'dart:io';
import 'package:e_commerce_elect/src/feature/auth/cubit/auth_state.dart';
import 'package:e_commerce_elect/src/feature/auth/model/data_auth/data_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';


class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

 final DataAuth authData = DataAuth();

  poSTDataCubit(
      {required nameData,
      required emailData,
      required phoneData,
      required nationalIdData,
      required gender,
      required password,
      required token,
      }) async {
    emit(AuthLoading());
    var user = await authData.postData(
        email: emailData,
        name: nameData,
        phone: phoneData,
        nationalId: nationalIdData,
        gender: gender,
        password: password,
        token: token,
        profileImage: userImage);
    emit(AuthSuccess(userData: user));
  }
  getDataCubit(
      {
      required emailData,
      required password,
      }) async{
    emit(AuthLoading());
    var success = await authData.loginData(
        email: emailData,
        password: password,
        );
    emit(AuthSuccess(userData: success));
  }

ImagePicker picker = ImagePicker();
File? image;
String? userImage;

Future<void> addImage() async {
  final pickedFile = await picker.pickImage(source: ImageSource.gallery);
  if (pickedFile != null) {
    image = File(pickedFile.path);
    Uint8List bytes = File(image!.path).readAsBytesSync();
    userImage = base64Encode(bytes);
    if (kDebugMode) {
      print('images = $userImage');
    }
    emit(ChooseImage());
  } else {
    if (kDebugMode) {
      print('no image selected');
    }
  }
}
}
