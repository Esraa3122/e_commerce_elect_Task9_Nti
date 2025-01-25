import 'package:shared_preferences/shared_preferences.dart';

var getId = Cash.shared!.getString("esraa");
var getTo = Cash.shared!.get("user");
class Cash {
  static SharedPreferences? shared;
  static init() async {
    shared = await SharedPreferences.getInstance();
  }
}
