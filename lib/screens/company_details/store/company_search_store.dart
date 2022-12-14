import 'package:mobx/mobx.dart';
import 'package:the_company_check/screens/company_details/repository/company_details_repository.dart';

import '../../../models/search_list_model.dart';
part 'company_search_store.g.dart';

class CompanySearchStore = _CompanySearchStore with _$CompanySearchStore;

abstract class _CompanySearchStore with Store {

  @observable
  bool isLoading = true;

  @observable
  bool isLogin = false;

  // @observable
  // late SearchListModel response;

  @observable
   SearchListModel response = SearchListModel();

  @action
  Future<String> getCompanySearch(String str) async {
    isLoading = true;
    response = (await CompanyDetailsRepository().getSearchCompanyList(str));
    print("Search Data ${response.message}");
    isLoading = false;
    return "";
  }

}