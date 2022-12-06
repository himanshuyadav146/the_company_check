import 'package:mobx/mobx.dart';
import 'package:the_company_check/screens/company_details/repository/company_details_repository.dart';

import '../../../models/company_details_model.dart';
part 'company_details_store.g.dart';

class CompanyDetailsStore = _CompanyDetailsStore with _$CompanyDetailsStore;

abstract class _CompanyDetailsStore with Store{

  @observable
  bool isLoading = false;

  @observable
  bool isLogin = false;

  @observable
   CompanyDetailsModel response = CompanyDetailsModel();

  // @observable
  // late CompanyDetailsModel response;

  @observable
  Datum? companyData;


  @action
  Future<String> getCompanyDetails() async{
    isLoading = true;
    response = (await CompanyDetailsRepository().fetchCompanyDetails());
    var data = response.data ?? [];
    companyData = data.elementAt(0);
    print("Getting Data ${response.message}");
    // print("Company Data ${companyData.elementAt(0).legalName}");
    return "";
  }

}