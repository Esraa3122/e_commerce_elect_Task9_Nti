import 'package:e_commerce_elect/my_app.dart';
import 'package:e_commerce_elect/src/core/helper/cash_data.dart';
import 'package:e_commerce_elect/src/feature/auth/model/data_auth/data_auth.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Cash.init();
  Cashnjf.init();
  runApp(
    const MyApp(),
    //   DevicePreview(
    //   enabled: true,
    //   builder: (context) => const MyApp(),
    // )
  );
}
