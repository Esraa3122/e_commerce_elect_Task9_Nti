import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:e_commerce_elect/src/core/widget/app_bar.dart';
import 'package:e_commerce_elect/src/core/widget/button_nan_bar.dart';
import 'package:e_commerce_elect/src/core/widget/drower.dart';
import 'package:e_commerce_elect/src/feature/home/cubit/home_cubit.dart';
import 'package:e_commerce_elect/src/feature/home/cubit/home_state.dart';
import 'package:e_commerce_elect/src/feature/home/model/data/data_post.dart';
import 'package:e_commerce_elect/src/feature/products/view/refactors/electronics_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ElectronicsScreen extends StatelessWidget {
  const ElectronicsScreen({
    super.key,
    required this.endpoint,
    required this.title,
  });

  final String endpoint;
  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ElectronicsCubit(DataElectronics())
        ..getDataElectronicsCubit(endPoint: endpoint),
      child: Scaffold(
        backgroundColor: ColorsApp.kPrimaryColor,
        drawer: const DrawerHome(),
        appBar: appBarHome(
            title: title,
            ),
        bottomNavigationBar: ButtonNanBar(),
        body: BlocBuilder<ElectronicsCubit, ElectronicsState>(
          builder: (context, state) {
            if (state is ElectronicsSuccess) {
              return ListView.builder(
                itemCount: state.getdataElectronics.length,
                itemBuilder: (context, index) {
                  return ElectronicsBody(
                    modelElectronics: state.getdataElectronics[index],
                    endPoint: endpoint,
                  );
                },
              );
            } else if (state is ElectronicsFailure) {
              return Column(
                children: [const Text("Fail"), Text(state.errorMessage)],
              );
            }
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                    child: Text(
                  "Loading...",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                )),
                const SizedBox(height: 20),
                SpinKitWave(
                  size: 100.0,
                  itemBuilder: (BuildContext context, int index) {
                    return DecoratedBox(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: index.isEven ? Colors.grey : Colors.blueGrey,
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
