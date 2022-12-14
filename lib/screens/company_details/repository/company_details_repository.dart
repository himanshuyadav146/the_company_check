import 'package:the_company_check/api/service_api.dart';
import '../../../models/company_details_model.dart';
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
}