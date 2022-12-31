import 'package:mobx/mobx.dart';
import 'package:the_company_check/models/financials_model.dart';

import '../repository/company_details_repository.dart';

part 'financials_details_store.g.dart';

class FinancialsDetailsStore = _FinancialsDetailsStore with _$FinancialsDetailsStore;

abstract class _FinancialsDetailsStore with Store{

  @observable
  bool isLoading = true;

  @observable
  FinancialsModel response = FinancialsModel();


  @action
  Future<String> getFinancialsDetails(String str) async{
    isLoading = true;
    response = await (await CompanyDetailsRepository().getFinancialsDetails(str));
    isLoading = false;
    return "";
  }




}