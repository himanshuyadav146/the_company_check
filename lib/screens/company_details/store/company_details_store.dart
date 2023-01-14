import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:the_company_check/screens/company_details/repository/company_details_repository.dart';

import '../../../models/company_details_model.dart';
part 'company_details_store.g.dart';

class CompanyDetailsStore = _CompanyDetailsStore with _$CompanyDetailsStore;

abstract class _CompanyDetailsStore with Store{

  @observable
  bool isLoading = true;

  @observable
  bool isLogin = false;

  @observable
   CompanyDetailsModel response = CompanyDetailsModel();

  @observable
  List<TDirector>? directorsList =[];

  @observable
  Datum? companyData;


  @action
  Future<String> getCompanyDetails(String str) async{
    debugPrint("API call");
    isLoading = true;
    response = (await CompanyDetailsRepository().fetchCompanyDetails(str));
    var data = response.data ?? [];
    companyData = data.elementAt(0);
    directorsList?.add(TDirector(title: 'Current Directors(${companyData?.currentDirectors?.length})'));
    directorsList?.addAll(companyData?.currentDirectors as List<TDirector>);
    directorsList?.add(TDirector(title: 'Previous Directors(${companyData?.pastDirectors?.length})'));
    directorsList?.addAll(companyData?.pastDirectors as List<TDirector>);
    isLoading = false;
    return "";
  }
}