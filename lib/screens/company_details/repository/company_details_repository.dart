import 'dart:convert';

import 'package:the_company_check/api/service_api.dart';
import '../../../models/company_details_model.dart';
import '../../../models/financials_model.dart';
import '../../../models/home_model.dart';
import '../../../models/product_model.dart';
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
    return FinancialsModel.fromJson(response);
  }

  Future<HomeModel> fetchHomePageDetails() async{
    final response = await _apiService.get("api/company-homepage");
    return HomeModel.fromJson(response);
  }

  // Future<List<ProductModel>> fetchProductList(String str) async{
  //   str = "AAACT2803M";
  //   final response = await _apiService.get("api/company-products/$str");
  //   return userModelFromJson(response);
  //   // return ProductModel.fromJson({"data": response});
  // }

  Future<List<ProductModel>> fetchProductList(String str) async{
    str = "AAACT2803M";
    final response = await _apiService.get("api/company-products/$str");
    final List<ProductModel> listProduct = productModelFromJson(response);
    return listProduct;
  }

  }