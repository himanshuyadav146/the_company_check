import 'dart:convert';

import 'package:the_company_check/api/service_api.dart';
import '../../../models/company_details_model.dart';
import '../../../models/financials_model.dart';
import '../../../models/search_list_model.dart';

class CompanyDetailsRepository{
  final ApiService _apiService = ApiService();
  Future<CompanyDetailsModel> fetchCompanyDetails(String str) async{
   final response = await _apiService.get("api/companydetails/$str");
   return CompanyDetailsModel.fromJson(response);
  }
  
  Future<SearchListModel> getSearchCompanyList(String str) async{
    final response = await _apiService.get("api/companysearch/$str");
    return SearchListModel.fromJson(response);
  }
  
  Future<FinancialsModel> getFinancialsDetails(String str) async{
    final response = await _apiService.get("api/CompanyFinancials/$str");
    print("URL : api/CompanyFinancials/$str");
    //final data = await json.decode(response);
    return FinancialsModel.fromJson(response);
    // return FinancialsModel.fromJson(response);
  }
}