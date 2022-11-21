import 'package:the_company_check/api/service_api.dart';
import '../../../models/company_details_model.dart';

class CompanyDetailsRepository{
  final ApiService _apiService = ApiService();
  Future<CompanyDetailsModel> fetchCompanyDetails() async{
   final response = await _apiService.get("api/companydetails/L15491WB1962PLC031425");
   return CompanyDetailsModel.fromJson(response);
  }
}