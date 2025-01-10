import 'package:e_commerce_elect/src/core/style/color_app.dart';
import 'package:e_commerce_elect/src/feature/details/view/widget/details_app_bar.dart';
import 'package:e_commerce_elect/src/feature/details/view/refactors/details_body.dart';
import 'package:e_commerce_elect/src/feature/home/cubit/home_cubit.dart';
import 'package:e_commerce_elect/src/feature/home/model/data/data_post.dart';
import 'package:e_commerce_elect/src/feature/home/model/model/home_modle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.modelElectronics, required this.endpoint});

  final ModelElectronics modelElectronics;
  final String endpoint;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ElectronicsCubit(DataElectronics())
        ..getDataElectronicsCubit(endPoint: endpoint),
      child: Scaffold(
          appBar: appBar(context, title: modelElectronics.category),
          backgroundColor: ColorsApp.kPrimaryColor,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: DetailsBody(
                modelElectronics: modelElectronics,
              ),
            ),
          )),
    );
  }
}
