
import 'dart:convert';

SearchListModel searchListModelFromJson(String str) => SearchListModel.fromJson(json.decode(str));

String searchListModelToJson(SearchListModel data) => json.encode(data.toJson());

class SearchListModel {
  SearchListModel({
    this.status,
    this.message,
    this.data,
  });

  bool? status;
  String? message;
  List<DatuSerch>? data;

  factory SearchListModel.fromJson(Map<String, dynamic> json) => SearchListModel(
    status: json["status"] == null ? null : json["status"],
    message: json["message"] == null ? null : json["message"],
    data: json["data"] == null ? null : List<DatuSerch>.from(json["data"].map((x) => DatuSerch.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status == null ? null : status,
    "message": message == null ? null : message,
    // "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
    "data": List<dynamic>.from((data ?? []).map((x) => x.toJson())),

  };
}

class DatuSerch {
  DatuSerch({
    this.currentCin,
    this.legalName,
  });

  String? currentCin;
  String? legalName;

  factory DatuSerch.fromJson(Map<String, dynamic> json) => DatuSerch(
    currentCin: json["Current_Cin"] == null ? null : json["Current_Cin"],
    legalName: json["Legal_Name"] == null ? null : json["Legal_Name"],
  );

  Map<String, dynamic> toJson() => {
    "Current_Cin": currentCin == null ? null : currentCin,
    "Legal_Name": legalName == null ? null : legalName,
  };
}
