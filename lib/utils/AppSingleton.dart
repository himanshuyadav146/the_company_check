import '../models/company_details_model.dart';
import '../models/home_model.dart';

class AppSingleton{
  static final AppSingleton _appSingleton = AppSingleton._internal();
  factory AppSingleton(){
    return _appSingleton;
  }
  AppSingleton._internal();

  var cinNo = "L15491WB1962PLC031425";
  Charge? charg;
  HomeModel response = HomeModel();
}