import 'package:e_commerce_elect/src/feature/home/view/screen/home_screen.dart';
import 'package:e_commerce_elect/src/feature/profile/cubit/profile_cubit.dart';
import 'package:e_commerce_elect/src/feature/profile/cubit/profile_state.dart';
import 'package:e_commerce_elect/src/feature/profile/data/data_profile.dart';
import 'package:e_commerce_elect/src/feature/profile/view/widget/card_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileCubit(DataProfile())..postProfileData(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const CategortScreen()));
            },
            icon: const Icon(Icons.home),
          ),
        ),
        body: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            if (state is ProfileSuccess) {
              return Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      backgroundImage: NetworkImage(state.profileModel.profileUserModel.profileImage),
                    ),
                    const SizedBox(height: 60,),
                    CardProfile(title: state.profileModel.profileUserModel.name, data: Icons.person,),
                    const SizedBox(height: 20,),
                    CardProfile(title: state.profileModel.profileUserModel.email, data: Icons.email,),
                    const SizedBox(height: 20,),
                    CardProfile(title: state.profileModel.profileUserModel.nationalId, data: Icons.person,),
                    const SizedBox(height: 20,),
                    CardProfile(title: state.profileModel.profileUserModel.phone, data: Icons.phone,),
                  ],
                ),
              );
            } else if (state is ProfileError) {
              return Column(
                children: [const Text("Fail"), Text(state.errorMessage)],
              );
            }
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                    child: Text(
                  "Loading...",
                  style: TextStyle(color: Colors.white),
                )),
                SizedBox(height: 20),
                CircularProgressIndicator(),
              ],
            );
          },
        ),
      ),
    );
  }
}
