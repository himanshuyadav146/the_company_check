
import 'dart:convert';

CompanyDetailsModel companyDetailsModelFromJson(String str) => CompanyDetailsModel.fromJson(json.decode(str));

String companyDetailsModelToJson(CompanyDetailsModel data) => json.encode(data.toJson());

class CompanyDetailsModel {
  CompanyDetailsModel({
    this.status,
    this.message,
    this.data,
  });

  bool? status;
  String? message;
  List<Datum>? data;

  factory CompanyDetailsModel.fromJson(Map<String, dynamic> json) => CompanyDetailsModel(
    status: json["status"],
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": List<dynamic>.from((data ?? []).map((x) => x.toJson())),
  };
}

class Datum {
  Datum({
    this.id,
    this.companyId,
    this.currentCin,
    this.legalName,
    this.knownName,
    this.registrationNumber,
    this.rocCode,
    this.pan,
    this.companyCategory,
    this.companySubCategory,
    this.classOfCompany,
    this.authorisedCapital,
    this.paidUpCapital,
    this.activeCompliance,
    this.dateOfIncorporation,
    this.dateOfIncorporationFilter,
    this.dateOfLastAgm,
    this.dateOfBalanceSheet,
    this.website,
    this.logo,
    this.lastBasicDataUpdatedDate,
    this.lastScreenDate,
    this.bseNumber,
    this.bseLink,
    this.nseNumber,
    this.nseLink,
    this.companyStatus,
    this.listingStatus,
    this.suspendedAtStockExchange,
    this.companiesPresentFilingStatus,
    this.statusUnderCirp,
    this.struckOff,
    this.restoredAfter,
    this.sectors,
    this.businessActivity,
    this.industrySegments,
    this.parentCompanyName,
    this.founders,
    this.nameHistory,
    this.cinHistory,
    this.filterNames,
    this.address,
    this.filterAddress,
    this.statusFilter,
    this.social,
    this.currentDirectors,
    this.pastDirectors,
    this.financial,
    this.funding,
    this.openCharges,
    this.closedCharges,
    this.charges,
    this.gst,
    this.legalCases,
    this.createdAt,
    this.sortingId,
    this.paidUpCapitalRange,
    this.authorizedCapitalRange,
  });

  String? id;
  String? companyId;
  String? currentCin;
  String? legalName;
  String? knownName;
  String? registrationNumber;
  String? rocCode;
  String? pan;
  String? companyCategory;
  String? companySubCategory;
  String? classOfCompany;
  double? authorisedCapital;
  double? paidUpCapital;
  String? activeCompliance;
  String? dateOfIncorporation;
  String? dateOfIncorporationFilter;
  String? dateOfLastAgm;
  String? dateOfBalanceSheet;
  String? website;
  String? logo;
  String? lastBasicDataUpdatedDate;
  String? lastScreenDate;
  String? bseNumber;
  String? bseLink;
  String? nseNumber;
  String? nseLink;
  String? companyStatus;
  String? listingStatus;
  String? suspendedAtStockExchange;
  String? companiesPresentFilingStatus;
  String? statusUnderCirp;
  String? struckOff;
  String? restoredAfter;
  List<Sector>? sectors;
  List<BusinessActivity>? businessActivity;
  List<IndustrySegment>? industrySegments;
  List<dynamic>? parentCompanyName;
  List<dynamic>? founders;
  List<String>? nameHistory;
  List<String>? cinHistory;
  List<String>? filterNames;
  Address? address;
  String? filterAddress;
  List<String>? statusFilter;
  Social? social;
  List<TDirector>? currentDirectors;
  List<TDirector>? pastDirectors;
  List<Financial>? financial;
  Funding? funding;
  double? openCharges;
  double? closedCharges;
  List<Charge>? charges;
  Gst? gst;
  LegalCases? legalCases;
  String? createdAt;
  int? sortingId;
  String? paidUpCapitalRange;
  double? authorizedCapitalRange;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["_id"],
    companyId: json["Company_Id"],
    currentCin: json["Current_Cin"],
    legalName: json["Legal_Name"],
    knownName: json["Known_Name"],
    registrationNumber: json["Registration_Number"],
    rocCode: json["Roc_Code"],
    pan: json["Pan"],
    companyCategory: json["Company_Category"],
    companySubCategory: json["Company_Sub_Category"],
    classOfCompany: json["Class_Of_Company"],
    authorisedCapital: json["Authorised_Capital"] == null ? null : double.parse(json["Authorised_Capital"].toString() ?? "0"),
    paidUpCapital: json["Paid_Up_Capital"]  == null ? null : double.parse(json["Paid_Up_Capital"].toString() ?? "0"),
    activeCompliance: json["Active_Compliance"],
    dateOfIncorporation: json["Date_Of_Incorporation"],
    dateOfIncorporationFilter: json["Date_Of_Incorporation_Filter"],
    dateOfLastAgm: json["Date_Of_Last_Agm"],
    dateOfBalanceSheet: json["Date_Of_BalanceSheet"],
    website: json["Website"],
    logo: json["Logo"],
    lastBasicDataUpdatedDate: json["Last_Basic_data_Updated_Date"],
    lastScreenDate: json["Last_Screen_Date"],
    bseNumber: json["Bse_Number"],
    bseLink: json["Bse_Link"],
    nseNumber: json["Nse_Number"],
    nseLink: json["Nse_Link"],
    companyStatus: json["Company_Status"],
    listingStatus: json["Listing_Status"],
    suspendedAtStockExchange: json["Suspended_At_Stock_Exchange"],
    companiesPresentFilingStatus: json["Companies_Present_Filing_Status"],
    statusUnderCirp: json["Status_Under_Cirp"],
    struckOff: json["Struck_Off"],
    restoredAfter: json["Restored_After"],
    sectors: List<Sector>.from(json["Sectors"].map((x) => Sector.fromJson(x))),
    businessActivity: List<BusinessActivity>.from(json["Business_Activity"].map((x) => BusinessActivity.fromJson(x))),
    industrySegments: List<IndustrySegment>.from(json["Industry_Segments"].map((x) => IndustrySegment.fromJson(x))),
    parentCompanyName: List<dynamic>.from(json["Parent_Company_Name"].map((x) => x)),
    founders: List<dynamic>.from(json["Founders"].map((x) => x)),
    nameHistory: List<String>.from(json["Name_History"].map((x) => x)),
    cinHistory: List<String>.from(json["Cin_History"].map((x) => x)),
    filterNames: List<String>.from(json["Filter_Names"].map((x) => x)),
    address: Address.fromJson(json["Address"]),
    filterAddress: json["Filter_Address"],
    statusFilter: List<String>.from(json["Status_Filter"].map((x) => x)),
    social: Social.fromJson(json["Social"]),
    currentDirectors: List<TDirector>.from(json["Current_Directors"].map((x) => TDirector.fromJson(x))),
    pastDirectors: List<TDirector>.from(json["Past_Directors"].map((x) => TDirector.fromJson(x))),
    financial: List<Financial>.from(json["Financial"].map((x) => Financial.fromJson(x))),
    funding: Funding.fromJson(json["Funding"]),
    openCharges: json["Open_Charges"],
    closedCharges: json["Closed_Charges"],
    charges: List<Charge>.from(json["Charges"].map((x) => Charge.fromJson(x))),
    gst: Gst.fromJson(json["Gst"]),
    legalCases: LegalCases.fromJson(json["Legal_Cases"]),
    createdAt: json["Created_at"],
    sortingId: json["Sorting_Id"],
    paidUpCapitalRange: json["Paid_Up_Capital_Range"],
    authorizedCapitalRange: json["Authorized_Capital_Range"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "Company_Id": companyId,
    "Current_Cin": currentCin,
    "Legal_Name": legalName,
    "Known_Name": knownName,
    "Registration_Number": registrationNumber,
    "Roc_Code": rocCode,
    "Pan": pan,
    "Company_Category": companyCategory,
    "Company_Sub_Category": companySubCategory,
    "Class_Of_Company": classOfCompany,
    "Authorised_Capital": authorisedCapital,
    "Paid_Up_Capital": paidUpCapital,
    "Active_Compliance": activeCompliance,
    "Date_Of_Incorporation": dateOfIncorporation,
    "Date_Of_Incorporation_Filter": dateOfIncorporationFilter,
    "Date_Of_Last_Agm": dateOfLastAgm,
    "Date_Of_BalanceSheet": dateOfBalanceSheet,
    "Website": website,
    "Logo": logo,
    "Last_Basic_data_Updated_Date": lastBasicDataUpdatedDate,
    "Last_Screen_Date": lastScreenDate,
    "Bse_Number": bseNumber,
    "Bse_Link": bseLink,
    "Nse_Number": nseNumber,
    "Nse_Link": nseLink,
    "Company_Status": companyStatus,
    "Listing_Status": listingStatus,
    "Suspended_At_Stock_Exchange": suspendedAtStockExchange,
    "Companies_Present_Filing_Status": companiesPresentFilingStatus,
    "Status_Under_Cirp": statusUnderCirp,
    "Struck_Off": struckOff,
    "Restored_After": restoredAfter,
    "Sectors": List<dynamic>.from((sectors ?? []).map((x) => x.toJson())),
    "Business_Activity": List<dynamic>.from((businessActivity ?? []).map((x) => x.toJson())),
    "Industry_Segments": List<dynamic>.from((industrySegments ?? []).map((x) => x.toJson())),
    "Parent_Company_Name": List<dynamic>.from((parentCompanyName ?? []).map((x) => x)),
    "Founders": List<dynamic>.from((founders ?? []).map((x) => x)),
    "Name_History": List<dynamic>.from((nameHistory ?? []).map((x) => x)),
    "Cin_History": List<dynamic>.from((cinHistory ?? []).map((x) => x)),
    "Filter_Names": List<dynamic>.from((filterNames ??[]).map((x) => x)),
    "Address": address,
    "Filter_Address": filterAddress,
    "Status_Filter": List<dynamic>.from((statusFilter ?? []).map((x) => x)),
    "Social": social,
    "Current_Directors": List<dynamic>.from((currentDirectors ?? []).map((x) => x.toJson())),
    "Past_Directors": List<dynamic>.from((pastDirectors ?? []).map((x) => x.toJson())),
    "Financial": List<dynamic>.from((financial ?? []).map((x) => x.toJson())),
    "Funding": funding,
    "Open_Charges": openCharges,
    "Closed_Charges": closedCharges,
    "Charges": List<dynamic>.from((charges ?? []).map((x) => x.toJson())),
    "Gst": gst,
    "Legal_Cases": legalCases,
    "Created_at": createdAt,
    "Sorting_Id": sortingId,
    "Paid_Up_Capital_Range": paidUpCapitalRange,
    "Authorized_Capital_Range": authorizedCapitalRange,
  };
}

class Address {
  Address({
    this.registeredAddress,
    this.location,
    this.registeredCity,
    this.registeredState,
    this.registeredPinCode,
  });

  String? registeredAddress;
  String? location;
  String? registeredCity;
  String? registeredState;
  String? registeredPinCode;

  factory Address.fromJson(Map<String, dynamic> json) => Address(
    registeredAddress: json["Registered_Address"],
    location: json["Location"],
    registeredCity: json["Registered_City"],
    registeredState: json["Registered_State"],
    registeredPinCode: json["Registered_PinCode"],
  );

  Map<String, dynamic> toJson() => {
    "Registered_Address": registeredAddress,
    "Location": location,
    "Registered_City": registeredCity,
    "Registered_State": registeredState,
    "Registered_PinCode": registeredPinCode,
  };
}

class BusinessActivity {
  BusinessActivity({
    this.mainActivityGroup,
    this.descriptionOfBusinessActivity,
    this.turnoverPercentage,
  });

  String? mainActivityGroup;
  String? descriptionOfBusinessActivity;
  String? turnoverPercentage;

  factory BusinessActivity.fromJson(Map<String, dynamic> json) => BusinessActivity(
    mainActivityGroup: json["Main_Activity_Group"],
    descriptionOfBusinessActivity: json["Description_Of_Business_Activity"],
    turnoverPercentage: json["Turnover_Percentage"],
  );

  Map<String, dynamic> toJson() => {
    "Main_Activity_Group": mainActivityGroup,
    "Description_Of_Business_Activity": descriptionOfBusinessActivity,
    "Turnover_Percentage": turnoverPercentage,
  };
}

class Charge {
  Charge({
    this.status,
    this.chargeId,
    this.chargeHolderName,
    this.dateOfCreation,
    this.dateOfModification,
    this.dateOfSatisfaction,
    this.amount,
  });

  String? status;
  String? chargeId;
  String? chargeHolderName;
  String? dateOfCreation;
  String? dateOfModification;
  String? dateOfSatisfaction;
  dynamic? amount;

  factory Charge.fromJson(Map<String, dynamic> json) => Charge(
    status: json["Status"],
    chargeId: json["Charge_Id"],
    chargeHolderName: json["Charge_Holder_Name"],
    dateOfCreation: json["Date_Of_Creation"],
    dateOfModification: json["Date_Of_Modification"],
    dateOfSatisfaction: json["Date_Of_Satisfaction"],
    amount: json["Amount"],
  );

  Map<String, dynamic> toJson() => {
    "Status": status,
    "Charge_Id": chargeId,
    "Charge_Holder_Name": chargeHolderName,
    "Date_Of_Creation": dateOfCreation,
    "Date_Of_Modification": dateOfModification,
    "Date_Of_Satisfaction": dateOfSatisfaction,
    "Amount": amount,
  };
}


// final statusValues = EnumValues({
//   "Closed": Status.CLOSED,
//   "Open": Status.OPEN
// },{});

class TDirector {
  TDirector({
    this.dinPan,
    this.directorName,
    this.profilePicUrl,
    this.pan,
    this.designation,
    this.nationality,
    this.title
  });

  String? dinPan;
  String? directorName;
  String? profilePicUrl;
  String? pan;
  String? designation;
  String? nationality;
  String? title;

  factory TDirector.fromJson(Map<String, dynamic> json) => TDirector(
    dinPan: json["Din_Pan"],
    directorName: json["Director_Name"],
    profilePicUrl: json["Profile_Pic_Url"] == null ? null : json["Profile_Pic_Url"],
    pan: json["Pan"] == null ? null : json["Pan"],
    designation: json["Designation"],
    nationality: json["Nationality"],
  );

  Map<String, dynamic> toJson() => {
    "Din_Pan": dinPan,
    "Director_Name": directorName,
    "Profile_Pic_Url": profilePicUrl == null ? null : profilePicUrl,
    "Pan": pan == null ? null : pan,
    "Designation": designation,
    "Nationality":  nationality,
  };
}


class Financial {
  Financial({
    this.year,
    this.netWorth,
    this.profitLoss,
    this.revenue,
    this.revenueFromOperation,
  });

  String? year;
  double? netWorth;
  double? profitLoss;
  double? revenue;
  double? revenueFromOperation;

  factory Financial.fromJson(Map<String, dynamic> json) => Financial(
    year: json["Year"],
    netWorth: json["Net_Worth"] == null ? null : double.parse(json["Net_Worth"].toString() ?? "0"),
    profitLoss: json["Profit_Loss"],
    revenue: json["Revenue"],
    revenueFromOperation: json["Revenue_From_Operation"],
  );

  Map<String, dynamic> toJson() => {
    "Year": year,
    "Net_Worth": netWorth,
    "Profit_Loss": profitLoss,
    "Revenue": revenue,
    "Revenue_From_Operation": revenueFromOperation,
  };
}

class Funding {
  Funding({
    this.lastFundingDate,
    this.totalFundingAmount,
    this.totalFunding,
  });

  String? lastFundingDate;
  String? totalFundingAmount;
  int? totalFunding;

  factory Funding.fromJson(Map<String, dynamic> json) => Funding(
    lastFundingDate: json["Last_Funding_Date"],
    totalFundingAmount: json["Total_Funding_Amount"],
    totalFunding: json["Total_Funding"],
  );

  Map<String, dynamic> toJson() => {
    "Last_Funding_Date": lastFundingDate,
    "Total_Funding_Amount": totalFundingAmount,
    "Total_Funding": totalFunding,
  };
}

class Gst {
  Gst({
    this.hsnCode,
    this.gstBusiness,
    this.gstLocation,
  });

  List<String>? hsnCode;
  List<String>? gstBusiness;
  List<String>? gstLocation;

  factory Gst.fromJson(Map<String, dynamic> json) => Gst(
   // hsnCode: List<String>.from(json["Hsn_Code"]) == null ? null : List<String>.from(json["Hsn_Code"]),
   // gstBusiness: List<String>.from(json["Gst_Business"]),
   // gstLocation: List<String>.from(json["Gst_Location"]),
  );

  Map<String, dynamic> toJson() => {
//    "Status_Filter": List<dynamic>.from((statusFilter ?? []).map((x) => x)),
   // "Hsn_Code": List<dynamic>.from((hashCode ?? []).map((x) => x)),
    //"Gst_Business": List<dynamic>.from((gstBusiness ?? []).map((x) => x)),
   // "Gst_Location": List<dynamic>.from((gstLocation ?? []).map((x) => x)),
  };
}

class IndustrySegment {
  IndustrySegment({
    this.industry,
    this.segment,
  });

  String? industry;
  List<String>? segment;

  factory IndustrySegment.fromJson(Map<String, dynamic> json) => IndustrySegment(
    industry: json["Industry"],
    segment: List<String>.from(json["Segment"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "Industry": industry,
    "Segment": List<dynamic>.from((segment ?? []).map((x) => x)),
  };
}

class LegalCases {
  LegalCases({
    this.casesFiledAgainstCompany,
    this.casesFiledByCompany,
    this.pendingCases,
    this.disposedCases,
    this.total,
  });

  int? casesFiledAgainstCompany;
  int? casesFiledByCompany;
  int? pendingCases;
  int? disposedCases;
  int? total;

  factory LegalCases.fromJson(Map<String, dynamic> json) => LegalCases(
    casesFiledAgainstCompany: json["Cases_Filed_Against_Company"],
    casesFiledByCompany: json["Cases_Filed_By_Company"],
    pendingCases: json["Pending_Cases"],
    disposedCases: json["Disposed_Cases"],
    total: json["Total"],
  );

  Map<String, dynamic> toJson() => {
    "Cases_Filed_Against_Company": casesFiledAgainstCompany,
    "Cases_Filed_By_Company": casesFiledByCompany,
    "Pending_Cases": pendingCases,
    "Disposed_Cases": disposedCases,
    "Total": total,
  };
}

class Sector {
  Sector({
    this.sector,
    this.subSector,
  });

  String? sector;
  List<String>? subSector;

  factory Sector.fromJson(Map<String, dynamic> json) => Sector(
    sector: json["Sector"],
    subSector: List<String>.from(json["Sub_Sector"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "Sector": sector,
    "Sub_Sector": List<dynamic>.from((subSector ?? []).map((x) => x)),
  };
}

class Social {
  Social({
    this.linkedin,
    this.twitter,
    this.facebook,
    this.instagram,
    this.youtube,
  });

  String? linkedin;
  String? twitter;
  String? facebook;
  String? instagram;
  String? youtube;

  factory Social.fromJson(Map<String, dynamic> json) => Social(
    linkedin: json["Linkedin"],
    twitter: json["Twitter"],
    facebook: json["Facebook"],
    instagram: json["Instagram"],
    youtube: json["Youtube"],
  );

  Map<String, dynamic> toJson() => {
    "Linkedin": linkedin,
    "Twitter": twitter,
  };
}
