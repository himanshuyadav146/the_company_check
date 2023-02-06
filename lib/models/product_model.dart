// To parse this JSON data, do
//
//     final productModel = productModelFromJson(jsonString);

import 'dart:convert';

List<ProductModel> productModelFromJson(dynamic str) => List<ProductModel>.from(List<dynamic>.from(str).map((x) => ProductModel.fromJson(x)));

String productModelToJson(List<ProductModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductModel {
  ProductModel({
    this.id,
    this.productUrl,
    this.categoryName,
    this.uniqueId,
    this.productName,
    this.price,
    this.companyInformation,
    this.productDescription,
    this.status,
    this.companyDetails,
    this.productSpecification,
    this.sellerContactDetail,
    this.subCategory,
    this.childCategory,
    this.imagePath,
    this.imageLink,
    this.pan,
    this.quantity,
  });

  String? id;
  String? productUrl;
  CategoryName? categoryName;
  String? uniqueId;
  String? productName;
  String? price;
  CompanyInformation? companyInformation;
  String? productDescription;
  List<Status>? status;
  CompanyDetails? companyDetails;
  ProductSpecification? productSpecification;
  SellerContactDetail? sellerContactDetail;
  String? subCategory;
  String? childCategory;
  String? imagePath;
  String? imageLink;
  Pan? pan;
  List<String>? quantity;

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["_id"],
    productUrl: json["Product_Url"],
    categoryName: categoryNameValues.map[json["Category_Name"]]!,
    uniqueId: json["Unique_id"],
    productName: json["Product_Name"],
    price: json["Price"],
    companyInformation: json["Company_Information"] == null ? null : CompanyInformation.fromJson(json["Company_Information"]),
    productDescription: json["Product_Description"],
    status: json["Status"] == null ? [] : List<Status>.from(json["Status"]!.map((x) => statusValues.map[x]!)),
    companyDetails: json["Company_details"] == null ? null : CompanyDetails.fromJson(json["Company_details"]),
    productSpecification: json["Product_specification"] == null ? null : ProductSpecification.fromJson(json["Product_specification"]),
    sellerContactDetail: json["Seller_Contact_Detail"] == null ? null : SellerContactDetail.fromJson(json["Seller_Contact_Detail"]),
    subCategory: json["Sub_Category"],
    childCategory: json["Child_Category"],
    imagePath: json["Image_path"],
    imageLink: json["Image_Link"],
    pan: panValues.map[json["Pan"]]!,
    quantity: json["Quantity"] == null ? [] : List<String>.from(json["Quantity"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "Product_Url": productUrl,
    "Category_Name": categoryNameValues.reverse[categoryName],
    "Unique_id": uniqueId,
    "Product_Name": productName,
    "Price": price,
    "Company_Information": companyInformation?.toJson(),
    "Product_Description": productDescription,
    "Status": status == null ? [] : List<dynamic>.from(status!.map((x) => statusValues.reverse[x])),
    "Company_details": companyDetails?.toJson(),
    "Product_specification": productSpecification?.toJson(),
    "Seller_Contact_Detail": sellerContactDetail?.toJson(),
    "Sub_Category": subCategory,
    "Child_Category": childCategory,
    "Image_path": imagePath,
    "Image_Link": imageLink,
    "Pan": panValues.reverse[pan],
    "Quantity": quantity == null ? [] : List<dynamic>.from(quantity!.map((x) => x)),
  };
}

enum CategoryName { BUILDING_CONSTRUCTION, CONSUMER_ELECTRONICS, INDUSTRIAL_PLANTS_MACHINERY }

final categoryNameValues = EnumValues({
  "Building Construction": CategoryName.BUILDING_CONSTRUCTION,
  "Consumer Electronics": CategoryName.CONSUMER_ELECTRONICS,
  "Industrial Plants Machinery": CategoryName.INDUSTRIAL_PLANTS_MACHINERY
});

class CompanyDetails {
  CompanyDetails({
    this.yearOfEstablishment,
    this.legalStatusOfFirm,
    this.natureOfBusiness,
    this.numberOfEmployees,
    this.annualTurnover,
    this.indiaMartMemberSince,
    this.gst,
    this.importExportCodeIec,
  });

  String? yearOfEstablishment;
  LegalStatusOfFirm? legalStatusOfFirm;
  Status? natureOfBusiness;
  String? numberOfEmployees;
  String? annualTurnover;
  String? indiaMartMemberSince;
  String? gst;
  String? importExportCodeIec;

  factory CompanyDetails.fromJson(Map<String, dynamic> json) => CompanyDetails(
    yearOfEstablishment: json["Year_of_Establishment"],
    legalStatusOfFirm: legalStatusOfFirmValues.map[json["Legal_Status_of_Firm"]]!,
    natureOfBusiness: statusValues.map[json["Nature_of_Business"]]!,
    numberOfEmployees: json["Number_of_Employees"],
    annualTurnover: json["Annual_Turnover"],
    indiaMartMemberSince: json["IndiaMART_Member_Since"],
    gst: json["GST"],
    importExportCodeIec: json["Import_Export_Code_(IEC)"],
  );

  Map<String, dynamic> toJson() => {
    "Year_of_Establishment": yearOfEstablishment,
    "Legal_Status_of_Firm": legalStatusOfFirmValues.reverse[legalStatusOfFirm],
    "Nature_of_Business": statusValues.reverse[natureOfBusiness],
    "Number_of_Employees": numberOfEmployees,
    "Annual_Turnover": annualTurnover,
    "IndiaMART_Member_Since": indiaMartMemberSince,
    "GST": gst,
    "Import_Export_Code_(IEC)": importExportCodeIec,
  };
}

enum LegalStatusOfFirm { PRIVATE_LIMITED_COMPANY, LIMITED_COMPANY_LTD_PVT_LTD }

final legalStatusOfFirmValues = EnumValues({
  "Limited Company (Ltd./Pvt.Ltd.)": LegalStatusOfFirm.LIMITED_COMPANY_LTD_PVT_LTD,
  "Private Limited Company": LegalStatusOfFirm.PRIVATE_LIMITED_COMPANY
});

enum Status { LEADING_SUPPLIER, TRUST_SEAL_VERIFIED, MANUFACTURER, VERIFIED_SUPPLIER }

final statusValues = EnumValues({
  "Leading_Supplier": Status.LEADING_SUPPLIER,
  "Manufacturer": Status.MANUFACTURER,
  "TrustSEAL_Verified": Status.TRUST_SEAL_VERIFIED,
  "Verified_Supplier": Status.VERIFIED_SUPPLIER
});

class CompanyInformation {
  CompanyInformation({
    this.companyName,
    this.companyLocation,
    this.companyRating,
    this.companyReview,
  });

  String? companyName;
  String? companyLocation;
  String? companyRating;
  String? companyReview;

  factory CompanyInformation.fromJson(Map<String, dynamic> json) => CompanyInformation(
    companyName: json["Company_name"],
    companyLocation: json["Company_location"],
    companyRating: json["Company_rating"],
    companyReview: json["Company_review"],
  );

  Map<String, dynamic> toJson() => {
    "Company_name": companyName,
    "Company_location": companyLocation,
    "Company_rating": companyRating,
    "Company_review": companyReview,
  };
}

enum Pan { AAACT2803_M }

final panValues = EnumValues({
  "AAACT2803M": Pan.AAACT2803_M
});

class ProductSpecification {
  ProductSpecification({
    this.material,
    this.thickness,
    this.brand,
    this.overallWidth,
    this.coatingType,
    this.coatingMass,
    this.surfaceCondition,
    this.corrugationType,
    this.crestHeight,
    this.tensileStrength,
    this.yieldStrength,
    this.waterAbsorption,
    this.manufacturingProcess,
    this.height,
    this.windSpeedsHandlingCapacity,
    this.modulusOfElasticity,
    this.usageApplication,
    this.sizeDimension,
    this.color,
    this.designPattern,
    this.modelNameNumber,
    this.countryOfOrigin,
    this.diameter,
    this.grade,
    this.unitLength,
    this.application,
    this.standard,
    this.deliveryPeriod,
    this.packagingSize,
    this.weight,
  });

  String? material;
  String? thickness;
  String? brand;
  String? overallWidth;
  String? coatingType;
  String? coatingMass;
  String? surfaceCondition;
  String? corrugationType;
  String? crestHeight;
  String? tensileStrength;
  String? yieldStrength;
  String? waterAbsorption;
  String? manufacturingProcess;
  String? height;
  String? windSpeedsHandlingCapacity;
  String? modulusOfElasticity;
  String? usageApplication;
  String? sizeDimension;
  String? color;
  String? designPattern;
  String? modelNameNumber;
  String? countryOfOrigin;
  String? diameter;
  String? grade;
  String? unitLength;
  String? application;
  String? standard;
  String? deliveryPeriod;
  String? packagingSize;
  String? weight;

  factory ProductSpecification.fromJson(Map<String, dynamic> json) => ProductSpecification(
    material: json["Material"],
    thickness: json["Thickness"],
    brand: json["Brand"],
    overallWidth: json["Overall_Width"],
    coatingType: json["Coating_Type"],
    coatingMass: json["Coating_Mass"],
    surfaceCondition: json["Surface_Condition"],
    corrugationType: json["Corrugation_Type"],
    crestHeight: json["Crest_Height"],
    tensileStrength: json["Tensile_Strength"],
    yieldStrength: json["Yield_Strength"],
    waterAbsorption: json["Water_Absorption"],
    manufacturingProcess: json["Manufacturing_Process"],
    height: json["Height"],
    windSpeedsHandlingCapacity: json["Wind_Speeds_Handling_Capacity"],
    modulusOfElasticity: json["Modulus_Of_Elasticity"],
    usageApplication: json["Usage/Application"],
    sizeDimension: json["Size/Dimension"],
    color: json["Color"],
    designPattern: json["Design/Pattern"],
    modelNameNumber: json["Model_Name/Number"],
    countryOfOrigin: json["Country_of_Origin"],
    diameter: json["Diameter"],
    grade: json["Grade"],
    unitLength: json["Unit_Length"],
    application: json["Application"],
    standard: json["Standard"],
    deliveryPeriod: json["Delivery_Period"],
    packagingSize: json["Packaging_Size"],
    weight: json["Weight"],
  );

  Map<String, dynamic> toJson() => {
    "Material": material,
    "Thickness": thickness,
    "Brand": brand,
    "Overall_Width": overallWidth,
    "Coating_Type": coatingType,
    "Coating_Mass": coatingMass,
    "Surface_Condition": surfaceCondition,
    "Corrugation_Type": corrugationType,
    "Crest_Height": crestHeight,
    "Tensile_Strength": tensileStrength,
    "Yield_Strength": yieldStrength,
    "Water_Absorption": waterAbsorption,
    "Manufacturing_Process": manufacturingProcess,
    "Height": height,
    "Wind_Speeds_Handling_Capacity": windSpeedsHandlingCapacity,
    "Modulus_Of_Elasticity": modulusOfElasticity,
    "Usage/Application": usageApplication,
    "Size/Dimension": sizeDimension,
    "Color": color,
    "Design/Pattern": designPattern,
    "Model_Name/Number": modelNameNumber,
    "Country_of_Origin": countryOfOrigin,
    "Diameter": diameter,
    "Grade": grade,
    "Unit_Length": unitLength,
    "Application": application,
    "Standard": standard,
    "Delivery_Period": deliveryPeriod,
    "Packaging_Size": packagingSize,
    "Weight": weight,
  };
}

class SellerContactDetail {
  SellerContactDetail({
    this.sellerName,
    this.sellerLocation,
    this.sellerWebsite,
    this.sellerPhone,
  });

  String? sellerName;
  String? sellerLocation;
  String? sellerWebsite;
  String? sellerPhone;

  factory SellerContactDetail.fromJson(Map<String, dynamic> json) => SellerContactDetail(
    sellerName: json["Seller_name"],
    sellerLocation: json["Seller_location"],
    sellerWebsite: json["Seller_website"],
    sellerPhone: json["Seller_phone"],
  );

  Map<String, dynamic> toJson() => {
    "Seller_name": sellerName,
    "Seller_location": sellerLocation,
    "Seller_website": sellerWebsite,
    "Seller_phone": sellerPhone,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
