

class CompanyDetailsModel {
  bool? status;
  String? message;
  List<Data>? data;

  CompanyDetailsModel({this.status, this.message, this.data});

  CompanyDetailsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? sId;
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
  List<Sectors>? sectors;
  List<BusinessActivity>? businessActivity;
  List<IndustrySegments>? industrySegments;
  List<String>? parentCompanyName;
  List<String>? founders;
  List<String>? nameHistory;
  List<String>? cinHistory;
  List<String>? filterNames;
  Address? address;
  String? filterAddress;
  List<String>? statusFilter;
  Social? social;
  List<CurrentDirectors>? currentDirectors;
  //List<PastDirectors>? pastDirectors;
  List<Financial>? financial;
  Funding? funding;
  double? openCharges;
  double? closedCharges;
  List<Charges>? charges;
  Gst? gst;
  LegalCases? legalCases;
  String? createdAt;
  int? sortingId;
  String? paidUpCapitalRange;
  double? authorizedCapitalRange;

  Data(
      {this.sId,
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
       // this.pastDirectors,
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
        this.authorizedCapitalRange});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    companyId = json['Company_Id'];
    currentCin = json['Current_Cin'];
    legalName = json['Legal_Name'];
    knownName = json['Known_Name'];
    registrationNumber = json['Registration_Number'];
    rocCode = json['Roc_Code'];
    pan = json['Pan'];
    companyCategory = json['Company_Category'];
    companySubCategory = json['Company_Sub_Category'];
    classOfCompany = json['Class_Of_Company'];
    authorisedCapital = json['Authorised_Capital'];
    paidUpCapital = json['Paid_Up_Capital'];
    activeCompliance = json['Active_Compliance'];
    dateOfIncorporation = json['Date_Of_Incorporation'];
    dateOfIncorporationFilter = json['Date_Of_Incorporation_Filter'];
    dateOfLastAgm = json['Date_Of_Last_Agm'];
    dateOfBalanceSheet = json['Date_Of_BalanceSheet'];
    website = json['Website'];
    logo = json['Logo'];
    lastBasicDataUpdatedDate = json['Last_Basic_data_Updated_Date'];
    lastScreenDate = json['Last_Screen_Date'];
    bseNumber = json['Bse_Number'];
    bseLink = json['Bse_Link'];
    nseNumber = json['Nse_Number'];
    nseLink = json['Nse_Link'];
    companyStatus = json['Company_Status'];
    listingStatus = json['Listing_Status'];
    suspendedAtStockExchange = json['Suspended_At_Stock_Exchange'];
    companiesPresentFilingStatus = json['Companies_Present_Filing_Status'];
    statusUnderCirp = json['Status_Under_Cirp'];
    struckOff = json['Struck_Off'];
    restoredAfter = json['Restored_After'];
    if (json['Sectors'] != null) {
      sectors = <Sectors>[];
      json['Sectors'].forEach((v) {
        sectors!.add(new Sectors.fromJson(v));
      });
    }
    if (json['Business_Activity'] != null) {
      businessActivity = <BusinessActivity>[];
      json['Business_Activity'].forEach((v) {
        businessActivity!.add(new BusinessActivity.fromJson(v));
      });
    }
    if (json['Industry_Segments'] != null) {
      industrySegments = <IndustrySegments>[];
      json['Industry_Segments'].forEach((v) {
        industrySegments!.add(new IndustrySegments.fromJson(v));
      });
    }
    if (json['Parent_Company_Name'] != null) {
      parentCompanyName = <String>[];
      json['Parent_Company_Name'].forEach((v) {
        parentCompanyName!.add(v);
      });
    }
    if (json['Founders'] != null) {
      founders = <String>[];
      json['Founders'].forEach((v) {
        founders!.add(v);
      });
    }
    nameHistory = json['Name_History'].cast<String>();
    cinHistory = json['Cin_History'].cast<String>();
    filterNames = json['Filter_Names'].cast<String>();
    address =
    json['Address'] != null ? new Address.fromJson(json['Address']) : null;
    filterAddress = json['Filter_Address'];
    statusFilter = json['Status_Filter'].cast<String>();
    social =
    json['Social'] != null ? new Social.fromJson(json['Social']) : null;
    if (json['Current_Directors'] != null) {
      currentDirectors = <CurrentDirectors>[];
      json['Current_Directors'].forEach((v) {
        currentDirectors!.add(new CurrentDirectors.fromJson(v));
      });
    }
    // if (json['Past_Directors'] != null) {
    //   pastDirectors = <PastDirectors>[];
    //   json['Past_Directors'].forEach((v) {
    //     pastDirectors!.add(new PastDirectors.fromJson(v));
    //   });
    // }
    if (json['Financial'] != null) {
      financial = <Financial>[];
      json['Financial'].forEach((v) {
        financial!.add(new Financial.fromJson(v));
      });
    }
    funding =
    json['Funding'] != null ? new Funding.fromJson(json['Funding']) : null;
    openCharges = json['Open_Charges'];
    closedCharges = json['Closed_Charges'];
    if (json['Charges'] != null) {
      charges = <Charges>[];
      json['Charges'].forEach((v) {
        charges!.add(new Charges.fromJson(v));
      });
    }
    gst = json['Gst'] != null ? new Gst.fromJson(json['Gst']) : null;
    legalCases = json['Legal_Cases'] != null
        ? new LegalCases.fromJson(json['Legal_Cases'])
        : null;
    createdAt = json['Created_at'];
    sortingId = json['Sorting_Id'];
    paidUpCapitalRange = json['Paid_Up_Capital_Range'];
    authorizedCapitalRange = json['Authorized_Capital_Range'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['Company_Id'] = this.companyId;
    data['Current_Cin'] = this.currentCin;
    data['Legal_Name'] = this.legalName;
    data['Known_Name'] = this.knownName;
    data['Registration_Number'] = this.registrationNumber;
    data['Roc_Code'] = this.rocCode;
    data['Pan'] = this.pan;
    data['Company_Category'] = this.companyCategory;
    data['Company_Sub_Category'] = this.companySubCategory;
    data['Class_Of_Company'] = this.classOfCompany;
    data['Authorised_Capital'] = this.authorisedCapital;
    data['Paid_Up_Capital'] = this.paidUpCapital;
    data['Active_Compliance'] = this.activeCompliance;
    data['Date_Of_Incorporation'] = this.dateOfIncorporation;
    data['Date_Of_Incorporation_Filter'] = this.dateOfIncorporationFilter;
    data['Date_Of_Last_Agm'] = this.dateOfLastAgm;
    data['Date_Of_BalanceSheet'] = this.dateOfBalanceSheet;
    data['Website'] = this.website;
    data['Logo'] = this.logo;
    data['Last_Basic_data_Updated_Date'] = this.lastBasicDataUpdatedDate;
    data['Last_Screen_Date'] = this.lastScreenDate;
    data['Bse_Number'] = this.bseNumber;
    data['Bse_Link'] = this.bseLink;
    data['Nse_Number'] = this.nseNumber;
    data['Nse_Link'] = this.nseLink;
    data['Company_Status'] = this.companyStatus;
    data['Listing_Status'] = this.listingStatus;
    data['Suspended_At_Stock_Exchange'] = this.suspendedAtStockExchange;
    data['Companies_Present_Filing_Status'] = this.companiesPresentFilingStatus;
    data['Status_Under_Cirp'] = this.statusUnderCirp;
    data['Struck_Off'] = this.struckOff;
    data['Restored_After'] = this.restoredAfter;
    if (this.sectors != null) {
      data['Sectors'] = this.sectors!.map((v) => v.toJson()).toList();
    }
    if (this.businessActivity != null) {
      data['Business_Activity'] =
          this.businessActivity!.map((v) => v.toJson()).toList();
    }
    if (this.industrySegments != null) {
      data['Industry_Segments'] =
          this.industrySegments!.map((v) => v.toJson()).toList();
    }
    // if (this.parentCompanyName != null) {
    //   data['Parent_Company_Name'] =
    //       this.parentCompanyName!.map((v) => v.toJson()).toList();
    // }
    // if (this.founders != null) {
    //   data['Founders'] = this.founders!.map((v) => v.toJson()).toList();
    // }
    data['Name_History'] = this.nameHistory;
    data['Cin_History'] = this.cinHistory;
    data['Filter_Names'] = this.filterNames;
    if (this.address != null) {
      data['Address'] = this.address!.toJson();
    }
    data['Filter_Address'] = this.filterAddress;
    data['Status_Filter'] = this.statusFilter;
    if (this.social != null) {
      data['Social'] = this.social!.toJson();
    }
    if (this.currentDirectors != null) {
      data['Current_Directors'] =
          this.currentDirectors!.map((v) => v.toJson()).toList();
    }
    // if (this.pastDirectors != null) {
    //   data['Past_Directors'] =
    //       this.pastDirectors!.map((v) => v.toJson()).toList();
    // }
    if (this.financial != null) {
      data['Financial'] = this.financial!.map((v) => v.toJson()).toList();
    }
    if (this.funding != null) {
      data['Funding'] = this.funding!.toJson();
    }
    data['Open_Charges'] = this.openCharges;
    data['Closed_Charges'] = this.closedCharges;
    if (this.charges != null) {
      data['Charges'] = this.charges!.map((v) => v.toJson()).toList();
    }
    if (this.gst != null) {
      data['Gst'] = this.gst!.toJson();
    }
    if (this.legalCases != null) {
      data['Legal_Cases'] = this.legalCases!.toJson();
    }
    data['Created_at'] = this.createdAt;
    data['Sorting_Id'] = this.sortingId;
    data['Paid_Up_Capital_Range'] = this.paidUpCapitalRange;
    data['Authorized_Capital_Range'] = this.authorizedCapitalRange;
    return data;
  }
}

class Sectors {
  String? sector;
  List<String>? subSector;

  Sectors({this.sector, this.subSector});

  Sectors.fromJson(Map<String, dynamic> json) {
    sector = json['Sector'];
    subSector = json['Sub_Sector'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Sector'] = this.sector;
    data['Sub_Sector'] = this.subSector;
    return data;
  }
}

class BusinessActivity {
  String? mainActivityGroup;
  String? descriptionOfBusinessActivity;
  String? turnoverPercentage;

  BusinessActivity(
      {this.mainActivityGroup,
        this.descriptionOfBusinessActivity,
        this.turnoverPercentage});

  BusinessActivity.fromJson(Map<String, dynamic> json) {
    mainActivityGroup = json['Main_Activity_Group'];
    descriptionOfBusinessActivity = json['Description_Of_Business_Activity'];
    turnoverPercentage = json['Turnover_Percentage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Main_Activity_Group'] = this.mainActivityGroup;
    data['Description_Of_Business_Activity'] =
        this.descriptionOfBusinessActivity;
    data['Turnover_Percentage'] = this.turnoverPercentage;
    return data;
  }
}

class IndustrySegments {
  String? industry;
  List<String>? segment;

  IndustrySegments({this.industry, this.segment});

  IndustrySegments.fromJson(Map<String, dynamic> json) {
    industry = json['Industry'];
    segment = json['Segment'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Industry'] = this.industry;
    data['Segment'] = this.segment;
    return data;
  }
}

class Address {
  String? registeredAddress;
  String? registeredCity;
  String? registeredState;
  String? registeredPinCode;

  Address(
      {this.registeredAddress,
        this.registeredCity,
        this.registeredState,
        this.registeredPinCode});

  Address.fromJson(Map<String, dynamic> json) {
    registeredAddress = json['Registered_Address'];
    registeredCity = json['Registered_City'];
    registeredState = json['Registered_State'];
    registeredPinCode = json['Registered_PinCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Registered_Address'] = this.registeredAddress;
    data['Registered_City'] = this.registeredCity;
    data['Registered_State'] = this.registeredState;
    data['Registered_PinCode'] = this.registeredPinCode;
    return data;
  }
}

class Social {
  String? linkedin;
  String? twitter;

  Social({this.linkedin, this.twitter});

  Social.fromJson(Map<String, dynamic> json) {
    linkedin = json['Linkedin'];
    twitter = json['Twitter'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Linkedin'] = this.linkedin;
    data['Twitter'] = this.twitter;
    return data;
  }
}

class CurrentDirectors {
  String? dinPan;
  String? directorName;
  String? profilePicUrl;
  String? pan;
  String? designation;
  String? nationality;

  CurrentDirectors(
      {this.dinPan,
        this.directorName,
        this.profilePicUrl,
        this.pan,
        this.designation,
        this.nationality});

  CurrentDirectors.fromJson(Map<String, dynamic> json) {
    dinPan = json['Din_Pan'];
    directorName = json['Director_Name'];
    profilePicUrl = json['Profile_Pic_Url'];
    pan = json['Pan'];
    designation = json['Designation'];
    nationality = json['Nationality'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Din_Pan'] = this.dinPan;
    data['Director_Name'] = this.directorName;
    data['Profile_Pic_Url'] = this.profilePicUrl;
    data['Pan'] = this.pan;
    data['Designation'] = this.designation;
    data['Nationality'] = this.nationality;
    return data;
  }
}

class Financial {
  String? year;
  double? netWorth;
  double? profitLoss;
  double? revenue;
  double? revenueFromOperation;

  Financial(
      {this.year,
        this.netWorth,
        this.profitLoss,
        this.revenue,
        this.revenueFromOperation});

  Financial.fromJson(Map<String, dynamic> json) {
    year = json['Year'];
    netWorth = json['Net_Worth'];
    profitLoss = json['Profit_Loss'];
    revenue = json['Revenue'];
    revenueFromOperation = json['Revenue_From_Operation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Year'] = this.year;
    data['Net_Worth'] = this.netWorth;
    data['Profit_Loss'] = this.profitLoss;
    data['Revenue'] = this.revenue;
    data['Revenue_From_Operation'] = this.revenueFromOperation;
    return data;
  }
}

class Funding {
  String? lastFundingDate;
  String? totalFundingAmount;
  int? totalFunding;

  Funding({this.lastFundingDate, this.totalFundingAmount, this.totalFunding});

  Funding.fromJson(Map<String, dynamic> json) {
    lastFundingDate = json['Last_Funding_Date'];
    totalFundingAmount = json['Total_Funding_Amount'];
    totalFunding = json['Total_Funding'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Last_Funding_Date'] = this.lastFundingDate;
    data['Total_Funding_Amount'] = this.totalFundingAmount;
    data['Total_Funding'] = this.totalFunding;
    return data;
  }
}

class Charges {
  String? status;
  String? chargeId;
  String? chargeHolderName;
  String? dateOfCreation;
  String? dateOfModification;
  String? dateOfSatisfaction;
  double? amount;

  Charges(
      {this.status,
        this.chargeId,
        this.chargeHolderName,
        this.dateOfCreation,
        this.dateOfModification,
        this.dateOfSatisfaction,
        this.amount});

  Charges.fromJson(Map<String, dynamic> json) {
    status = json['Status'];
    chargeId = json['Charge_Id'];
    chargeHolderName = json['Charge_Holder_Name'];
    dateOfCreation = json['Date_Of_Creation'];
    dateOfModification = json['Date_Of_Modification'];
    dateOfSatisfaction = json['Date_Of_Satisfaction'];
    amount = json['Amount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Status'] = this.status;
    data['Charge_Id'] = this.chargeId;
    data['Charge_Holder_Name'] = this.chargeHolderName;
    data['Date_Of_Creation'] = this.dateOfCreation;
    data['Date_Of_Modification'] = this.dateOfModification;
    data['Date_Of_Satisfaction'] = this.dateOfSatisfaction;
    data['Amount'] = this.amount;
    return data;
  }
}

class Gst {
  List<String>? hsnCode;
  List<String>? gstBusiness;
  List<String>? gstLocation;

  Gst({this.hsnCode, this.gstBusiness, this.gstLocation});

  Gst.fromJson(Map<String, dynamic> json) {
    hsnCode = json['Hsn_Code'].cast<String>();
    gstBusiness = json['Gst_Business'].cast<String>();
    gstLocation = json['Gst_Location'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Hsn_Code'] = this.hsnCode;
    data['Gst_Business'] = this.gstBusiness;
    data['Gst_Location'] = this.gstLocation;
    return data;
  }
}

class LegalCases {
  int? casesFiledAgainstCompany;
  int? casesFiledByCompany;
  int? pendingCases;
  int? disposedCases;
  int? total;

  LegalCases(
      {this.casesFiledAgainstCompany,
        this.casesFiledByCompany,
        this.pendingCases,
        this.disposedCases,
        this.total});

  LegalCases.fromJson(Map<String, dynamic> json) {
    casesFiledAgainstCompany = json['Cases_Filed_Against_Company'];
    casesFiledByCompany = json['Cases_Filed_By_Company'];
    pendingCases = json['Pending_Cases'];
    disposedCases = json['Disposed_Cases'];
    total = json['Total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Cases_Filed_Against_Company'] = this.casesFiledAgainstCompany;
    data['Cases_Filed_By_Company'] = this.casesFiledByCompany;
    data['Pending_Cases'] = this.pendingCases;
    data['Disposed_Cases'] = this.disposedCases;
    data['Total'] = this.total;
    return data;
  }
}
