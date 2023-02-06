import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/product_model.dart';
import 'custom_exception.dart';

class ApiService{
  final String _baseUrl = "http://125.63.99.18:8181/";

  Future<dynamic> get(String url) async {
    var responseJson;
    try {
      final response = await http.get(Uri.parse(_baseUrl + url));
      print("Created URL :${_baseUrl + url}");
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  // Future<List<ProductModel>> getList(String url) async{
  //   var responseJson;
  //   try {
  //     final response = await http.get(Uri.parse(_baseUrl + url));
  //     print("Created URL :${_baseUrl + url}");
  //     responseJson = _response(response);
  //   } on SocketException {
  //     throw FetchDataException('No Internet connection');
  //   }
  //   return responseJson;
  // }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        print(responseJson);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:

      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:

      default:
        throw FetchDataException(
            'Error Occurred while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }



}