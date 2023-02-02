
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import '../../../models/home_model.dart';
import '../../company_details/repository/company_details_repository.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store{
  @observable
  bool isLoading = true;

  @observable
  HomeModel response = HomeModel();

  @action
  Future<String> getHomePageDetails() async{
    isLoading = true;
    response = (await CompanyDetailsRepository().fetchHomePageDetails());
    isLoading = false;
    return "";
  }

}

