/*
// Example Usage
Map<String, dynamic> map = jsonDecode(<myJSONString>);
var myRootNode = Root.fromJson(map);
*/
class CompanyDetailsCount {
  int? totalCompanies;
  int? totalLlpCompanies;
  int? totalDirectors;
  int? weeklyComCount;
  int? monthComCount;
  int? otherThanActive;
  int? totalActive;
  String? screenedCompanies;

  CompanyDetailsCount({this.totalCompanies, this.totalLlpCompanies, this.totalDirectors, this.weeklyComCount, this.monthComCount, this.otherThanActive, this.totalActive, this.screenedCompanies});

  CompanyDetailsCount.fromJson(Map<String, dynamic> json) {
    totalCompanies = json['TotalCompanies'];
    totalLlpCompanies = json['TotalLlpCompanies'];
    totalDirectors = json['TotalDirectors'];
    weeklyComCount = json['WeeklyComCount'];
    monthComCount = json['MonthComCount'];
    otherThanActive = json['OtherThanActive'];
    totalActive = json['TotalActive'];
    screenedCompanies = json['ScreenedCompanies'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['TotalCompanies'] = totalCompanies;
    data['TotalLlpCompanies'] = totalLlpCompanies;
    data['TotalDirectors'] = totalDirectors;
    data['WeeklyComCount'] = weeklyComCount;
    data['MonthComCount'] = monthComCount;
    data['OtherThanActive'] = otherThanActive;
    data['TotalActive'] = totalActive;
    data['ScreenedCompanies'] = screenedCompanies;
    return data;
  }
}

class Data {
  List<CompanyDetailsCount?>? companyDetailsCount;
  List<TrendingCompany?>? trendingCompanies;
  List<InterestedCompany?>? interestedCompanies;

  Data({this.companyDetailsCount, this.trendingCompanies, this.interestedCompanies});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['CompanyDetailsCount'] != null) {
      companyDetailsCount = <CompanyDetailsCount>[];
      json['CompanyDetailsCount'].forEach((v) {
        companyDetailsCount!.add(CompanyDetailsCount.fromJson(v));
      });
    }
    if (json['TrendingCompanies'] != null) {
      trendingCompanies = <TrendingCompany>[];
      json['TrendingCompanies'].forEach((v) {
        trendingCompanies!.add(TrendingCompany.fromJson(v));
      });
    }
    if (json['InterestedCompanies'] != null) {
      interestedCompanies = <InterestedCompany>[];
      json['InterestedCompanies'].forEach((v) {
        interestedCompanies!.add(InterestedCompany.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['CompanyDetailsCount'] =CompanyDetailsCount != null ? companyDetailsCount!.map((v) => v?.toJson()).toList() : null;
    data['TrendingCompanies'] =trendingCompanies != null ? trendingCompanies!.map((v) => v?.toJson()).toList() : null;
    data['InterestedCompanies'] =interestedCompanies != null ? interestedCompanies!.map((v) => v?.toJson()).toList() : null;
    return data;
  }
}

class InterestedCompany {
  String? companyId;
  String? companyName;
  String? companyUrlName;
  String? cIN;
  String? companyLogo;
  String? dateOfIncorporation;
  String? industry;
  String? location;

  InterestedCompany({this.companyId, this.companyName, this.companyUrlName, this.cIN, this.companyLogo, this.dateOfIncorporation, this.industry, this.location});

  InterestedCompany.fromJson(Map<String, dynamic> json) {
    companyId = json['Company_Id'];
    companyName = json['CompanyName'];
    companyUrlName = json['CompanyUrlName'];
    cIN = json['CIN'];
    companyLogo = json['Company_Logo'];
    dateOfIncorporation = json['DateOfIncorporation'];
    industry = json['Industry'];
    location = json['Location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Company_Id'] = companyId;
    data['CompanyName'] = companyName;
    data['CompanyUrlName'] = companyUrlName;
    data['CIN'] = cIN;
    data['Company_Logo'] = companyLogo;
    data['DateOfIncorporation'] = dateOfIncorporation;
    data['Industry'] = industry;
    data['Location'] = location;
    return data;
  }
}

class HomeModel {
  bool? status;
  String? message;
  Data? data;

  HomeModel({this.status, this.message, this.data});

  HomeModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data?.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['status'] = status;
    data['message'] = message;
    data['data'] = data;
    return data;
  }
}

class TrendingCompany {
  String? companyId;
  String? companyName;
  String? companyUrlName;
  String? cIN;
  String? companyLogo;
  String? dateOfIncorporation;
  String? industry;
  String? location;

  TrendingCompany({this.companyId, this.companyName, this.companyUrlName, this.cIN, this.companyLogo, this.dateOfIncorporation, this.industry, this.location});

  TrendingCompany.fromJson(Map<String, dynamic> json) {
    companyId = json['Company_Id'];
    companyName = json['CompanyName'];
    companyUrlName = json['CompanyUrlName'];
    cIN = json['CIN'];
    companyLogo = json['Company_Logo'];
    dateOfIncorporation = json['DateOfIncorporation'];
    industry = json['Industry'];
    location = json['Location'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['Company_Id'] = companyId;
    data['CompanyName'] = companyName;
    data['CompanyUrlName'] = companyUrlName;
    data['CIN'] = cIN;
    data['Company_Logo'] = companyLogo;
    data['DateOfIncorporation'] = dateOfIncorporation;
    data['Industry'] = industry;
    data['Location'] = location;
    return data;
  }
}

