class DChartModel {
  String? domain;
  double? measure;

  DChartModel({this.domain, this.measure});

  DChartModel.fromJson(Map<String, dynamic> json) {
    domain = json['domain'];
    measure = json['measure'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['domain'] = this.domain;
    data['measure'] = this.measure;
    return data;
  }
}
