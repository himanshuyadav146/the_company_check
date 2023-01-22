class FinancialsModel {
  bool? status;
  String? message;
  Data? data;

  FinancialsModel({this.status, this.message, this.data});

  FinancialsModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  List<BalanceSheetAoc>? balanceSheetAoc;
  List<BalanceSheetAOCNBFC>? balanceSheetAOCNBFC;
  List<BalanceSheetLLP>? balanceSheetLLP;
  List<ProfitNLossAoc>? profitNLossAoc;
  List<ProfitNLossAOCNBFC>? profitNLossAOCNBFC;
  List<ProfitNLossLLP>? profitNLossLLP;
  List<RatioDetails>? ratioDetails;

  Data(
      {this.balanceSheetAoc,
        this.balanceSheetAOCNBFC,
        this.balanceSheetLLP,
        this.profitNLossAoc,
        this.profitNLossAOCNBFC,
        this.profitNLossLLP,
        this.ratioDetails});

  Data.fromJson(Map<String, dynamic> json) {
    if (json['BalanceSheet_Aoc'] != null) {
      balanceSheetAoc = <BalanceSheetAoc>[];
      json['BalanceSheet_Aoc'].forEach((v) {
        balanceSheetAoc!.add(new BalanceSheetAoc.fromJson(v));
      });
    }
    if (json['BalanceSheet_AOC_NBFC'] != null) {
      balanceSheetAOCNBFC = <BalanceSheetAOCNBFC>[];
      json['BalanceSheet_AOC_NBFC'].forEach((v) {
        balanceSheetAOCNBFC!.add(new BalanceSheetAOCNBFC.fromJson(v));
      });
    }
    if (json['Balance_Sheet_LLP'] != null) {
      balanceSheetLLP = <BalanceSheetLLP>[];
      json['Balance_Sheet_LLP'].forEach((v) {
        balanceSheetLLP!.add(new BalanceSheetLLP.fromJson(v));
      });
    }
    if (json['ProfitNLoss_Aoc'] != null) {
      profitNLossAoc = <ProfitNLossAoc>[];
      json['ProfitNLoss_Aoc'].forEach((v) {
        profitNLossAoc!.add(new ProfitNLossAoc.fromJson(v));
      });
    }
    if (json['ProfitNLoss_AOC_NBFC'] != null) {
      profitNLossAOCNBFC = <ProfitNLossAOCNBFC>[];
      json['ProfitNLoss_AOC_NBFC'].forEach((v) {
        profitNLossAOCNBFC!.add(new ProfitNLossAOCNBFC.fromJson(v));
      });
    }
    if (json['Profit_N_Loss_LLP'] != null) {
      profitNLossLLP = <ProfitNLossLLP>[];
      json['Profit_N_Loss_LLP'].forEach((v) {
        profitNLossLLP!.add(new ProfitNLossLLP.fromJson(v));
      });
    }
    if (json['Ratio_Details'] != null) {
      ratioDetails = <RatioDetails>[];
      json['Ratio_Details'].forEach((v) {
        ratioDetails!.add(new RatioDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.balanceSheetAoc != null) {
      data['BalanceSheet_Aoc'] =
          this.balanceSheetAoc!.map((v) => v.toJson()).toList();
    }
    if (this.balanceSheetAOCNBFC != null) {
      data['BalanceSheet_AOC_NBFC'] =
          this.balanceSheetAOCNBFC!.map((v) => v.toJson()).toList();
    }
    if (this.balanceSheetLLP != null) {
      data['Balance_Sheet_LLP'] =
          this.balanceSheetLLP!.map((v) => v.toJson()).toList();
    }
    if (this.profitNLossAoc != null) {
      data['ProfitNLoss_Aoc'] =
          this.profitNLossAoc!.map((v) => v.toJson()).toList();
    }
    if (this.profitNLossAOCNBFC != null) {
      data['ProfitNLoss_AOC_NBFC'] =
          this.profitNLossAOCNBFC!.map((v) => v.toJson()).toList();
    }
    data['Profit_N_Loss_LLP'] = this.profitNLossLLP;
    if (this.ratioDetails != null) {
      data['Ratio_Details'] =
          this.ratioDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ProfitNLossLLP {
  String? type;
  String? lLPNO;
  String? companyId;
  String? fYSTARTDATE;
  String? fYENDDATE;
  String? documentId;
  String? documentPath;
  String? documentUrl;
  double? grossTurnover;
  double? lessExciseDutyServiceTax;
  double? domesticSaleOfGoodsManufactured;
  double? domesticSaleOfGoodsTraded;
  double? domesticSaleSupplyOfServices;
  double? exportSaleOfGoodsManufactured;
  double? exportSaleOfGoodsTraded;
  double? exportSaleSupplyOfServices;
  double? otherIncome;
  double? increaseDecreaseInStocks;
  double? rawMaterialConsumed;
  double? purchasesMadeForReSale;
  double? consumptionOfStores;
  double? powerAndFuel;
  double? personnelExpenses;
  double? administrativeExpenses;
  double? paymentToAuditors;
  double? sellingExpenses;
  double? insuranceExpenses;
  double? depreciationAndAmortization;
  double? interest;
  double? otherExpenses;
  double? provisionForTax;
  double? profitPartnersAccount;
  double? profitReservesAndSurplus;
  double? totalIncome;
  double? totalExpenditure;
  double? netProfitLossBeforeTaxes;
  double? profitAfterTax;
  double? totalAmountOfExpenses;
  double? totalExpenses;
  double? eBITDA;
  double? profitBeforeInterestAndTax;
  double? profitBeforeExtraordinaryAndExceptionalItmes;

  ProfitNLossLLP(
      {this.type,
        this.lLPNO,
        this.companyId,
        this.fYSTARTDATE,
        this.fYENDDATE,
        this.documentId,
        this.documentPath,
        this.documentUrl,
        this.grossTurnover,
        this.lessExciseDutyServiceTax,
        this.domesticSaleOfGoodsManufactured,
        this.domesticSaleOfGoodsTraded,
        this.domesticSaleSupplyOfServices,
        this.exportSaleOfGoodsManufactured,
        this.exportSaleOfGoodsTraded,
        this.exportSaleSupplyOfServices,
        this.otherIncome,
        this.increaseDecreaseInStocks,
        this.rawMaterialConsumed,
        this.purchasesMadeForReSale,
        this.consumptionOfStores,
        this.powerAndFuel,
        this.personnelExpenses,
        this.administrativeExpenses,
        this.paymentToAuditors,
        this.sellingExpenses,
        this.insuranceExpenses,
        this.depreciationAndAmortization,
        this.interest,
        this.otherExpenses,
        this.provisionForTax,
        this.profitPartnersAccount,
        this.profitReservesAndSurplus,
        this.totalIncome,
        this.totalExpenditure,
        this.netProfitLossBeforeTaxes,
        this.profitAfterTax,
        this.totalAmountOfExpenses,
        this.totalExpenses,
        this.eBITDA,
        this.profitBeforeInterestAndTax,
        this.profitBeforeExtraordinaryAndExceptionalItmes});

  ProfitNLossLLP.fromJson(Map<String, dynamic> json) {
    type = json['Type'];
    lLPNO = json['LLP_NO'];
    companyId = json['Company_id'];
    fYSTARTDATE = json['FY_START_DATE'];
    fYENDDATE = json['FY_END_DATE'];
    documentId = json['DocumentId'];
    documentPath = json['Document_Path'];
    documentUrl = json['Document_Url'];
    grossTurnover = json['Gross_turnover'];
    lessExciseDutyServiceTax = json['Less_Excise_duty_service_tax'];
    domesticSaleOfGoodsManufactured =
    json['Domestic_Sale_of_goods_manufactured'];
    domesticSaleOfGoodsTraded = json['Domestic_Sale_of_goods_traded'];
    domesticSaleSupplyOfServices = json['Domestic_Sale_supply_of_services'];
    exportSaleOfGoodsManufactured = json['Export_Sale_of_goods_manufactured'];
    exportSaleOfGoodsTraded = json['Export_Sale_of_goods_traded'];
    exportSaleSupplyOfServices = json['Export_Sale_supply_of_services'];
    otherIncome = json['Other_income'];
    increaseDecreaseInStocks = json['Increase_decrease_in_stocks'];
    rawMaterialConsumed = json['Raw_material_consumed'];
    purchasesMadeForReSale = json['Purchases_made_for_re_sale'];
    consumptionOfStores = json['Consumption_of_stores'];
    powerAndFuel = json['Power_and_fuel'];
    personnelExpenses = json['Personnel_Expenses'];
    administrativeExpenses = json['Administrative_expenses'];
    paymentToAuditors = json['Payment_to_auditors'];
    sellingExpenses = json['Selling_expenses'];
    insuranceExpenses = json['Insurance_expenses'];
    depreciationAndAmortization = json['Depreciation_and_amortization'];
    interest = json['Interest'];
    otherExpenses = json['Other_expenses'];
    provisionForTax = json['Provision_for_Tax'];
    profitPartnersAccount = json['Profit_Partners_account'];
    profitReservesAndSurplus = json['Profit_Reserves_and_surplus'];
    totalIncome = json['Total_Income'];
    totalExpenditure = json['Total_expenditure'];
    netProfitLossBeforeTaxes = json['Net_Profit_Loss_before_taxes'];
    profitAfterTax = json['Profit_After_Tax'];
    totalAmountOfExpenses = json['Total_Amount_Of_Expenses'];
    totalExpenses = json['Total_Expenses'];
    eBITDA = json['EBITDA'];
    profitBeforeInterestAndTax = json['Profit_Before_Interest_And_Tax'];
    profitBeforeExtraordinaryAndExceptionalItmes =
    json['Profit_Before_Extraordinary_And_Exceptional_Itmes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Type'] = this.type;
    data['LLP_NO'] = this.lLPNO;
    data['Company_id'] = this.companyId;
    data['FY_START_DATE'] = this.fYSTARTDATE;
    data['FY_END_DATE'] = this.fYENDDATE;
    data['DocumentId'] = this.documentId;
    data['Document_Path'] = this.documentPath;
    data['Document_Url'] = this.documentUrl;
    data['Gross_turnover'] = this.grossTurnover;
    data['Less_Excise_duty_service_tax'] = this.lessExciseDutyServiceTax;
    data['Domestic_Sale_of_goods_manufactured'] =
        this.domesticSaleOfGoodsManufactured;
    data['Domestic_Sale_of_goods_traded'] = this.domesticSaleOfGoodsTraded;
    data['Domestic_Sale_supply_of_services'] =
        this.domesticSaleSupplyOfServices;
    data['Export_Sale_of_goods_manufactured'] =
        this.exportSaleOfGoodsManufactured;
    data['Export_Sale_of_goods_traded'] = this.exportSaleOfGoodsTraded;
    data['Export_Sale_supply_of_services'] = this.exportSaleSupplyOfServices;
    data['Other_income'] = this.otherIncome;
    data['Increase_decrease_in_stocks'] = this.increaseDecreaseInStocks;
    data['Raw_material_consumed'] = this.rawMaterialConsumed;
    data['Purchases_made_for_re_sale'] = this.purchasesMadeForReSale;
    data['Consumption_of_stores'] = this.consumptionOfStores;
    data['Power_and_fuel'] = this.powerAndFuel;
    data['Personnel_Expenses'] = this.personnelExpenses;
    data['Administrative_expenses'] = this.administrativeExpenses;
    data['Payment_to_auditors'] = this.paymentToAuditors;
    data['Selling_expenses'] = this.sellingExpenses;
    data['Insurance_expenses'] = this.insuranceExpenses;
    data['Depreciation_and_amortization'] = this.depreciationAndAmortization;
    data['Interest'] = this.interest;
    data['Other_expenses'] = this.otherExpenses;
    data['Provision_for_Tax'] = this.provisionForTax;
    data['Profit_Partners_account'] = this.profitPartnersAccount;
    data['Profit_Reserves_and_surplus'] = this.profitReservesAndSurplus;
    data['Total_Income'] = this.totalIncome;
    data['Total_expenditure'] = this.totalExpenditure;
    data['Net_Profit_Loss_before_taxes'] = this.netProfitLossBeforeTaxes;
    data['Profit_After_Tax'] = this.profitAfterTax;
    data['Total_Amount_Of_Expenses'] = this.totalAmountOfExpenses;
    data['Total_Expenses'] = this.totalExpenses;
    data['EBITDA'] = this.eBITDA;
    data['Profit_Before_Interest_And_Tax'] = this.profitBeforeInterestAndTax;
    data['Profit_Before_Extraordinary_And_Exceptional_Itmes'] =
        this.profitBeforeExtraordinaryAndExceptionalItmes;
    return data;
  }
}

class BalanceSheetLLP {
  String? type;
  String? lLPNO;
  String? companyId;
  String? fYStartDate;
  String? fYENDDATE;
  int? documentId;
  double? contributionReceived;
  double? reservesAndSurplus;
  double? securedLoans;
  double? unsecuredLoans;
  double? shortTermBorrowings;
  double? creditorsTradePayablesAdvanceFromCustomers;
  double? otherLiabilities;
  double? forTaxation;
  double? forContingencies;
  double? forInsurance;
  double? otherProvisions;
  double? grossFixedAssets;
  double? lessDepreciationAndAmortization;
  double? investments;
  double? inventories;
  double? loansAndAdvances;
  double? debtorsTradeReceivables;
  double? cashAndCashEquivalents;
  double? otherAssets;
  double? netFixedAssets;
  double? tOTAL;
  double? totalAsset;
  double? totalLiability;
  String? documentPath;
  String? documentUrl;

  BalanceSheetLLP(
      {this.type,
        this.lLPNO,
        this.companyId,
        this.fYStartDate,
        this.fYENDDATE,
        this.documentId,
        this.contributionReceived,
        this.reservesAndSurplus,
        this.securedLoans,
        this.unsecuredLoans,
        this.shortTermBorrowings,
        this.creditorsTradePayablesAdvanceFromCustomers,
        this.otherLiabilities,
        this.forTaxation,
        this.forContingencies,
        this.forInsurance,
        this.otherProvisions,
        this.grossFixedAssets,
        this.lessDepreciationAndAmortization,
        this.investments,
        this.inventories,
        this.loansAndAdvances,
        this.debtorsTradeReceivables,
        this.cashAndCashEquivalents,
        this.otherAssets,
        this.netFixedAssets,
        this.tOTAL,
        this.totalAsset,
        this.totalLiability,
        this.documentPath,
        this.documentUrl});

  BalanceSheetLLP.fromJson(Map<String, dynamic> json) {
    type = json['Type'];
    lLPNO = json['LLP_NO'];
    companyId = json['Company_id'];
    fYStartDate = json['FY_Start_Date'];
    fYENDDATE = json['FY_END_DATE'];
    documentId = json['DocumentId'];
    contributionReceived = json['Contribution_received'];
    reservesAndSurplus = json['Reserves_and_surplus'];
    securedLoans = json['Secured_loans'];
    unsecuredLoans = json['Unsecured_loans'];
    shortTermBorrowings = json['Short_term_borrowings'];
    creditorsTradePayablesAdvanceFromCustomers =
    json['Creditors_trade_payables_Advance_from_customers'];
    otherLiabilities = json['Other_liabilities'];
    forTaxation = json['for_taxation'];
    forContingencies = json['for_contingencies'];
    forInsurance = json['for_insurance'];
    otherProvisions = json['Other_provisions'];
    grossFixedAssets = json['Gross_Fixed_assets'];
    lessDepreciationAndAmortization =
    json['Less_depreciation_and_amortization'];
    investments = json['Investments'];
    inventories = json['Inventories'];
    loansAndAdvances = json['Loans_and_advances'];
    debtorsTradeReceivables = json['Debtors_trade_receivables'];
    cashAndCashEquivalents = json['Cash_and_cash_equivalents'];
    otherAssets = json['Other_assets'];
    netFixedAssets = json['Net_fixed_assets'];
    tOTAL = json['TOTAL'];
    totalAsset = json['Total_Asset'];
    totalLiability = json['Total_Liability'];
    documentPath = json['Document_Path'];
    documentUrl = json['Document_Url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Type'] = this.type;
    data['LLP_NO'] = this.lLPNO;
    data['Company_id'] = this.companyId;
    data['FY_Start_Date'] = this.fYStartDate;
    data['FY_END_DATE'] = this.fYENDDATE;
    data['DocumentId'] = this.documentId;
    data['Contribution_received'] = this.contributionReceived;
    data['Reserves_and_surplus'] = this.reservesAndSurplus;
    data['Secured_loans'] = this.securedLoans;
    data['Unsecured_loans'] = this.unsecuredLoans;
    data['Short_term_borrowings'] = this.shortTermBorrowings;
    data['Creditors_trade_payables_Advance_from_customers'] =
        this.creditorsTradePayablesAdvanceFromCustomers;
    data['Other_liabilities'] = this.otherLiabilities;
    data['for_taxation'] = this.forTaxation;
    data['for_contingencies'] = this.forContingencies;
    data['for_insurance'] = this.forInsurance;
    data['Other_provisions'] = this.otherProvisions;
    data['Gross_Fixed_assets'] = this.grossFixedAssets;
    data['Less_depreciation_and_amortization'] =
        this.lessDepreciationAndAmortization;
    data['Investments'] = this.investments;
    data['Inventories'] = this.inventories;
    data['Loans_and_advances'] = this.loansAndAdvances;
    data['Debtors_trade_receivables'] = this.debtorsTradeReceivables;
    data['Cash_and_cash_equivalents'] = this.cashAndCashEquivalents;
    data['Other_assets'] = this.otherAssets;
    data['Net_fixed_assets'] = this.netFixedAssets;
    data['TOTAL'] = this.tOTAL;
    data['Total_Asset'] = this.totalAsset;
    data['Total_Liability'] = this.totalLiability;
    data['Document_Path'] = this.documentPath;
    data['Document_Url'] = this.documentUrl;
    return data;
  }
}

class BalanceSheetAoc {
  String? type;
  double? equityShareCapital;
  double? reservesAndSurplus;
  double? moneyReceivedAgainstShareWarrants;
  double? otherEquity;
  double? totalEquity;
  double? longTermBorrowings;
  double? totalNonCurrentLiabilities;
  double? deferredTaxLiabilitiesNet;
  double? otherLongTermLiabilities;
  double? longTermProvisions;
  double? shortTermBorrowings;
  double? tradePayables;
  double? otherCurrentLiabilities;
  double? shortTermProvisions;
  double? totalCurrentLiabilites;
  double? totalEquitiesAndLiabilites;
  double? tangibleAssets;
  double? intangibleAssets;
  String? eQUITYPAIDUPCAPITAL;
  double? capitalWorkinprogress;
  double? intangibleAssetsUnderDevelopment;
  double? noncurrentInvestments;
  double? deferredTaxAssetsNet;
  double? longTermLoansAndAdvances;
  double? otherNoncurrentAssets;
  double? totalNonCurrentAssets;
  double? totalCurrentAsset;
  double? totalAsset;
  double? currentInvestment;
  double? inventories;
  double? tradeReceivables;
  double? cashAndCashEquivalents;
  double? cashAndBankBalance;
  double? shortTermLoansAndAdvances;
  double? otherCurrentAssets;
  String? category;
  String? dateAmount;
  String? fYENDDATE;
  String? dATEOFAGM;
  bool? isSubHeader;
  String? companyLink;
  double? otherIncome;
  double? financeCost;
  double? depreciationAndAmortisationExpense;
  double? profitBeforeTax;
  double? otherIntangibleAssets;
 // String? docUrlId;
  String? natureOfReportStandaloneConsolidated;
  String? pREFERENCEAUTHORISEDCAPITAL;
  double? totalRevenue;
  double? netWorthOfCompany;
  double? profitLoss;

  BalanceSheetAoc(
      {this.type,
        this.equityShareCapital,
        this.reservesAndSurplus,
        this.moneyReceivedAgainstShareWarrants,
        this.otherEquity,
        this.totalEquity,
        this.longTermBorrowings,
        this.totalNonCurrentLiabilities,
        this.deferredTaxLiabilitiesNet,
        this.otherLongTermLiabilities,
        this.longTermProvisions,
        this.shortTermBorrowings,
        this.tradePayables,
        this.otherCurrentLiabilities,
        this.shortTermProvisions,
        this.totalCurrentLiabilites,
        this.totalEquitiesAndLiabilites,
        this.tangibleAssets,
        this.intangibleAssets,
        this.eQUITYPAIDUPCAPITAL,
        this.capitalWorkinprogress,
        this.intangibleAssetsUnderDevelopment,
        this.noncurrentInvestments,
        this.deferredTaxAssetsNet,
        this.longTermLoansAndAdvances,
        this.otherNoncurrentAssets,
        this.totalNonCurrentAssets,
        this.totalCurrentAsset,
        this.totalAsset,
        this.currentInvestment,
        this.inventories,
        this.tradeReceivables,
        this.cashAndCashEquivalents,
        this.cashAndBankBalance,
        this.shortTermLoansAndAdvances,
        this.otherCurrentAssets,
        this.category,
        this.dateAmount,
        this.fYENDDATE,
        this.dATEOFAGM,
        this.isSubHeader,
        this.companyLink,
        this.otherIncome,
        this.financeCost,
        this.depreciationAndAmortisationExpense,
        this.profitBeforeTax,
        this.otherIntangibleAssets,
        //this.docUrlId,
        this.natureOfReportStandaloneConsolidated,
        this.pREFERENCEAUTHORISEDCAPITAL,
        this.totalRevenue,
        this.netWorthOfCompany,
        this.profitLoss});

  BalanceSheetAoc.fromJson(Map<String, dynamic> json) {
    type = json['Type'];
    equityShareCapital = json['Equity_Share_capital'];
    reservesAndSurplus = json['Reserves_and_surplus'];
    moneyReceivedAgainstShareWarrants =
    json['Money_received_against_share_warrants'];
    otherEquity = json['Other_equity'];
    totalEquity = json['Total_Equity'];
    longTermBorrowings = json['Long_term_borrowings'];
    totalNonCurrentLiabilities = json['Total_Non_Current_Liabilities'];
    deferredTaxLiabilitiesNet = json['Deferred_tax_liabilities_net'];
    otherLongTermLiabilities = json['Other_long_term_liabilities'];
    longTermProvisions = json['Long_term_provisions'];
    shortTermBorrowings = json['Short_term_borrowings'];
    tradePayables = json['Trade_payables'];
    otherCurrentLiabilities = json['Other_current_liabilities'];
    shortTermProvisions = json['Short_term_provisions'];
    totalCurrentLiabilites = json['Total_Current_Liabilites'];
    totalEquitiesAndLiabilites = json['Total_Equities_and_Liabilites'];
    tangibleAssets = json['Tangible_assets'];
    intangibleAssets = json['Intangible_assets'];
    eQUITYPAIDUPCAPITAL = json['EQUITY_PAID_UP_CAPITAL'];
    capitalWorkinprogress = json['Capital_workinprogress'];
    intangibleAssetsUnderDevelopment =
    json['Intangible_assets_under_development'];
    noncurrentInvestments = json['Noncurrent_Investments'];
    deferredTaxAssetsNet = json['Deferred_tax_assets_net'];
    longTermLoansAndAdvances = json['Long_term_loans_and_advances'];
    otherNoncurrentAssets = json['Other_noncurrent_assets'];
    totalNonCurrentAssets = json['Total_Non_Current_Assets'];
    totalCurrentAsset = json['Total_Current_Asset'];
    totalAsset = json['Total_Asset'];
    currentInvestment = json['Current_Investment'];
    inventories = json['Inventories'];
    tradeReceivables = json['Trade_receivables'];
    cashAndCashEquivalents = json['Cash_and_cash_equivalents'];
    cashAndBankBalance = json['Cash_and_bank_balance'];
    shortTermLoansAndAdvances = json['Short_term_loans_and_advances'];
    otherCurrentAssets = json['Other_current_assets'];
    category = json['Category'];
    dateAmount = json['date_Amount'];
    fYENDDATE = json['FY_END_DATE'];
    dATEOFAGM = json['DATE_OF_AGM'];
    isSubHeader = json['isSubHeader'];
    companyLink = json['CompanyLink'];
    otherIncome = json['Other_Income'];
    financeCost = json['Finance_Cost'];
    depreciationAndAmortisationExpense =
    json['Depreciation_and_Amortisation_expense'];
    profitBeforeTax = json['Profit_before_tax'];
    otherIntangibleAssets = json['Other_Intangible_assets'];
   // docUrlId = json['DocUrlId'];
    natureOfReportStandaloneConsolidated =
    json['NatureOfReportStandaloneConsolidated'];
    pREFERENCEAUTHORISEDCAPITAL = json['PREFERENCE_AUTHORISED_CAPITAL'];
    totalRevenue = json['Total_Revenue'];
    netWorthOfCompany = json['NetWorthOfCompany'];
    profitLoss = json['Profit_Loss'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Type'] = this.type;
    data['Equity_Share_capital'] = this.equityShareCapital;
    data['Reserves_and_surplus'] = this.reservesAndSurplus;
    data['Money_received_against_share_warrants'] =
        this.moneyReceivedAgainstShareWarrants;
    data['Other_equity'] = this.otherEquity;
    data['Total_Equity'] = this.totalEquity;
    data['Long_term_borrowings'] = this.longTermBorrowings;
    data['Total_Non_Current_Liabilities'] = this.totalNonCurrentLiabilities;
    data['Deferred_tax_liabilities_net'] = this.deferredTaxLiabilitiesNet;
    data['Other_long_term_liabilities'] = this.otherLongTermLiabilities;
    data['Long_term_provisions'] = this.longTermProvisions;
    data['Short_term_borrowings'] = this.shortTermBorrowings;
    data['Trade_payables'] = this.tradePayables;
    data['Other_current_liabilities'] = this.otherCurrentLiabilities;
    data['Short_term_provisions'] = this.shortTermProvisions;
    data['Total_Current_Liabilites'] = this.totalCurrentLiabilites;
    data['Total_Equities_and_Liabilites'] = this.totalEquitiesAndLiabilites;
    data['Tangible_assets'] = this.tangibleAssets;
    data['Intangible_assets'] = this.intangibleAssets;
    data['EQUITY_PAID_UP_CAPITAL'] = this.eQUITYPAIDUPCAPITAL;
    data['Capital_workinprogress'] = this.capitalWorkinprogress;
    data['Intangible_assets_under_development'] =
        this.intangibleAssetsUnderDevelopment;
    data['Noncurrent_Investments'] = this.noncurrentInvestments;
    data['Deferred_tax_assets_net'] = this.deferredTaxAssetsNet;
    data['Long_term_loans_and_advances'] = this.longTermLoansAndAdvances;
    data['Other_noncurrent_assets'] = this.otherNoncurrentAssets;
    data['Total_Non_Current_Assets'] = this.totalNonCurrentAssets;
    data['Total_Current_Asset'] = this.totalCurrentAsset;
    data['Total_Asset'] = this.totalAsset;
    data['Current_Investment'] = this.currentInvestment;
    data['Inventories'] = this.inventories;
    data['Trade_receivables'] = this.tradeReceivables;
    data['Cash_and_cash_equivalents'] = this.cashAndCashEquivalents;
    data['Cash_and_bank_balance'] = this.cashAndBankBalance;
    data['Short_term_loans_and_advances'] = this.shortTermLoansAndAdvances;
    data['Other_current_assets'] = this.otherCurrentAssets;
    data['Category'] = this.category;
    data['date_Amount'] = this.dateAmount;
    data['FY_END_DATE'] = this.fYENDDATE;
    data['DATE_OF_AGM'] = this.dATEOFAGM;
    data['isSubHeader'] = this.isSubHeader;
    data['CompanyLink'] = this.companyLink;
    data['Other_Income'] = this.otherIncome;
    data['Finance_Cost'] = this.financeCost;
    data['Depreciation_and_Amortisation_expense'] =
        this.depreciationAndAmortisationExpense;
    data['Profit_before_tax'] = this.profitBeforeTax;
    data['Other_Intangible_assets'] = this.otherIntangibleAssets;
   // data['DocUrlId'] = this.docUrlId;
    data['NatureOfReportStandaloneConsolidated'] =
        this.natureOfReportStandaloneConsolidated;
    data['PREFERENCE_AUTHORISED_CAPITAL'] = this.pREFERENCEAUTHORISEDCAPITAL;
    data['Total_Revenue'] = this.totalRevenue;
    data['NetWorthOfCompany'] = this.netWorthOfCompany;
    data['Profit_Loss'] = this.profitLoss;
    return data;
  }
}

class BalanceSheetAOCNBFC {
  String? type;
  String? uniqueId;
  String? cIN;
  String? companyId;
  String? fYSTARTDATE;
  String? fYENDDATE;
  String? dATEOFAGM;
  String? yearOfData;
  String? natureOfData;
  String? dataSource;
  double? shareCapital;
  double? reservesAndSurplus;
  double? otherEquity;
  double? totalEquity;
  double? derivativeFinancialInstruments;
  double? payables;
  double? debtSecurities;
  double? borrowings;
  double? deposits;
  double? subordinatedLiabilities;
  double? otherFinancialLiabilities;
  double? totalFinancialLiabilities;
  double? netCurrentTaxLiabilities;
  double? provisions;
  double? netDeferredTaxLiabilities;
  double? otherNonFinancialLiabilities;
  double? totalNonFinancialLiabilities;
  double? totalEquityAndLiabilities;
  double? loans;
  double? investments;
  double? derivativeFinancialInstrumentsAssets;
  double? receivables;
  double? cashAndBankBalance;
  double? otherFinancialAssets;
  double? totalFinancialAssets;
  double? tangibleAssets;
  double? intangibleAssets;
  double? capitalWorkInProgress;
  double? inventories;
  double? netCurrentTaxAssets;
  double? netDeferredTaxAssets;
  double? otherNonFinancialAssets;
  double? totalNonFinancialAssets;
  double? totalAssets;
  //double? docUrlid;
  String? docUrl;
  double? totalRevenueFromOperations;
  double? otherIncome;
  double? profitForThePeriod;

  BalanceSheetAOCNBFC(
      {this.type,
        this.uniqueId,
        this.cIN,
        this.companyId,
        this.fYSTARTDATE,
        this.fYENDDATE,
        this.dATEOFAGM,
        this.yearOfData,
        this.natureOfData,
        this.dataSource,
        this.shareCapital,
        this.reservesAndSurplus,
        this.otherEquity,
        this.totalEquity,
        this.derivativeFinancialInstruments,
        this.payables,
        this.debtSecurities,
        this.borrowings,
        this.deposits,
        this.subordinatedLiabilities,
        this.otherFinancialLiabilities,
        this.totalFinancialLiabilities,
        this.netCurrentTaxLiabilities,
        this.provisions,
        this.netDeferredTaxLiabilities,
        this.otherNonFinancialLiabilities,
        this.totalNonFinancialLiabilities,
        this.totalEquityAndLiabilities,
        this.loans,
        this.investments,
        this.derivativeFinancialInstrumentsAssets,
        this.receivables,
        this.cashAndBankBalance,
        this.otherFinancialAssets,
        this.totalFinancialAssets,
        this.tangibleAssets,
        this.intangibleAssets,
        this.capitalWorkInProgress,
        this.inventories,
        this.netCurrentTaxAssets,
        this.netDeferredTaxAssets,
        this.otherNonFinancialAssets,
        this.totalNonFinancialAssets,
        this.totalAssets,
        //this.docUrlid,
        this.docUrl,
        this.totalRevenueFromOperations,
        this.otherIncome,
        this.profitForThePeriod});

  BalanceSheetAOCNBFC.fromJson(Map<String, dynamic> json) {
    type = json['Type'];
    uniqueId = json['Unique_id'];
    cIN = json['CIN'];
    companyId = json['Company_Id'];
    fYSTARTDATE = json['FY_START_DATE'];
    fYENDDATE = json['FY_END_DATE'];
    dATEOFAGM = json['DATE_OF_AGM'];
    yearOfData = json['YearOfData'];
    natureOfData = json['NatureOfData'];
    dataSource = json['Data_Source'];
    shareCapital = json['Share_Capital'];
    reservesAndSurplus = json['Reserves_and_Surplus'];
    otherEquity = json['Other_Equity'];
    totalEquity = json['Total_Equity'];
    derivativeFinancialInstruments = json['Derivative_Financial_Instruments'];
    payables = json['Payables'];
    debtSecurities = json['Debt_Securities'];
    borrowings = json['Borrowings'];
    deposits = json['Deposits'];
    subordinatedLiabilities = json['Subordinated_Liabilities'];
    otherFinancialLiabilities = json['Other_Financial_Liabilities'];
    totalFinancialLiabilities = json['Total_Financial_Liabilities'];
    netCurrentTaxLiabilities = json['Net_Current_Tax_Liabilities'];
    provisions = json['Provisions'];
    netDeferredTaxLiabilities = json['Net_Deferred_Tax_Liabilities'];
    otherNonFinancialLiabilities = json['Other_Non_financial_Liabilities'];
    totalNonFinancialLiabilities = json['Total_Non_financial_Liabilities'];
    totalEquityAndLiabilities = json['Total_Equity_and_Liabilities'];
    loans = json['Loans'];
    investments = json['Investments'];
    derivativeFinancialInstrumentsAssets =
    json['Derivative_Financial_Instruments_assets'];
    receivables = json['Receivables'];
    cashAndBankBalance = json['Cash_and_Bank_Balance'];
    otherFinancialAssets = json['Other_Financial_Assets'];
    totalFinancialAssets = json['Total_Financial_Assets'];
    tangibleAssets = json['Tangible_Assets'];
    intangibleAssets = json['Intangible_Assets'];
    capitalWorkInProgress = json['Capital_Work_in_progress'];
    inventories = json['Inventories'];
    netCurrentTaxAssets = json['Net_Current_Tax_Assets'];
    netDeferredTaxAssets = json['Net_Deferred_Tax_Assets'];
    otherNonFinancialAssets = json['Other_Non_financial_Assets'];
    totalNonFinancialAssets = json['Total_Non_financial_Assets'];
    totalAssets = json['Total_Assets'];
  //  docUrlid = json['DocUrlid'];
    docUrl = json['DocUrl'];
    totalRevenueFromOperations = json['Total_Revenue_from_Operations'];
    otherIncome = json['Other_Income'];
    profitForThePeriod = json['Profit_for_the_Period'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Type'] = this.type;
    data['Unique_id'] = this.uniqueId;
    data['CIN'] = this.cIN;
    data['Company_Id'] = this.companyId;
    data['FY_START_DATE'] = this.fYSTARTDATE;
    data['FY_END_DATE'] = this.fYENDDATE;
    data['DATE_OF_AGM'] = this.dATEOFAGM;
    data['YearOfData'] = this.yearOfData;
    data['NatureOfData'] = this.natureOfData;
    data['Data_Source'] = this.dataSource;
    data['Share_Capital'] = this.shareCapital;
    data['Reserves_and_Surplus'] = this.reservesAndSurplus;
    data['Other_Equity'] = this.otherEquity;
    data['Total_Equity'] = this.totalEquity;
    data['Derivative_Financial_Instruments'] =
        this.derivativeFinancialInstruments;
    data['Payables'] = this.payables;
    data['Debt_Securities'] = this.debtSecurities;
    data['Borrowings'] = this.borrowings;
    data['Deposits'] = this.deposits;
    data['Subordinated_Liabilities'] = this.subordinatedLiabilities;
    data['Other_Financial_Liabilities'] = this.otherFinancialLiabilities;
    data['Total_Financial_Liabilities'] = this.totalFinancialLiabilities;
    data['Net_Current_Tax_Liabilities'] = this.netCurrentTaxLiabilities;
    data['Provisions'] = this.provisions;
    data['Net_Deferred_Tax_Liabilities'] = this.netDeferredTaxLiabilities;
    data['Other_Non_financial_Liabilities'] = this.otherNonFinancialLiabilities;
    data['Total_Non_financial_Liabilities'] = this.totalNonFinancialLiabilities;
    data['Total_Equity_and_Liabilities'] = this.totalEquityAndLiabilities;
    data['Loans'] = this.loans;
    data['Investments'] = this.investments;
    data['Derivative_Financial_Instruments_assets'] =
        this.derivativeFinancialInstrumentsAssets;
    data['Receivables'] = this.receivables;
    data['Cash_and_Bank_Balance'] = this.cashAndBankBalance;
    data['Other_Financial_Assets'] = this.otherFinancialAssets;
    data['Total_Financial_Assets'] = this.totalFinancialAssets;
    data['Tangible_Assets'] = this.tangibleAssets;
    data['Intangible_Assets'] = this.intangibleAssets;
    data['Capital_Work_in_progress'] = this.capitalWorkInProgress;
    data['Inventories'] = this.inventories;
    data['Net_Current_Tax_Assets'] = this.netCurrentTaxAssets;
    data['Net_Deferred_Tax_Assets'] = this.netDeferredTaxAssets;
    data['Other_Non_financial_Assets'] = this.otherNonFinancialAssets;
    data['Total_Non_financial_Assets'] = this.totalNonFinancialAssets;
    data['Total_Assets'] = this.totalAssets;
    // data['DocUrlid'] = this.docUrlid;
    data['DocUrl'] = this.docUrl;
    data['Total_Revenue_from_Operations'] = this.totalRevenueFromOperations;
    data['Other_Income'] = this.otherIncome;
    data['Profit_for_the_Period'] = this.profitForThePeriod;
    return data;
  }
}

class ProfitNLossAoc {
  String? type;
  String? category;
  String? dateAmount;
  String? fYENDDATE;
  String? dATEOFAGM;
  double? domesticSalesOfGoodsManufactured;
  double? domesticSalesOfGoodsTraded;
  double? domesticSupplyOfServices;
  double? exportSalesOfGoodsManufactured;
  double? exportSalesOfGoodsTraded;
  double? exportSupplyOfServices;
  double? otherIncome;
  double? totalRevenue;
  double? costOfMaterialConsumed;
  double? purchaseOfStockInTrade;
  double? changeInFinishedGoodsInventory;
  double? changeInWorkInProgressInventory;
  double? changeInStockInTradeInventory;
  double? employeeBenefitExpense;
  double? managerialRemuneration;
  double? paymentToAuditors;
  double? insuranceExpenses;
  double? powerFuel;
  double? financeCost;
  double? depreciationAndAmortisationExpense;
  double? oTHEREXPENSES;
  double? tOTALEXPENSES;
  double? ebitda;
  double? profitBeforeExceptionalAndExtraordinaryItemsAndTax;
  double? exceptionalItems;
  double? profitBeforeExtraordinaryItemsAndTax;
  double? extraordinaryItems;
  double? profitBeforeTax;
  double? currentTax;
  double? deferredTax;
  double? profitLossFromDiscontinuingOperations;
  double? taxExpenseOfDiscontinuingOperations;
  double? profitLoss;
  String? companyLink;
 // String? docUrlId;
  String? natureOfReportStandaloneConsolidated;
  double? dilutedEPSAfterExtraordinaryItems;
  String? incomeInForeignCurrency;
  String? expenditureInForeignCurrency;

  ProfitNLossAoc(
      {this.type,
        this.category,
        this.dateAmount,
        this.fYENDDATE,
        this.dATEOFAGM,
        this.domesticSalesOfGoodsManufactured,
        this.domesticSalesOfGoodsTraded,
        this.domesticSupplyOfServices,
        this.exportSalesOfGoodsManufactured,
        this.exportSalesOfGoodsTraded,
        this.exportSupplyOfServices,
        this.otherIncome,
        this.totalRevenue,
        this.costOfMaterialConsumed,
        this.purchaseOfStockInTrade,
        this.changeInFinishedGoodsInventory,
        this.changeInWorkInProgressInventory,
        this.changeInStockInTradeInventory,
        this.employeeBenefitExpense,
        this.managerialRemuneration,
        this.paymentToAuditors,
        this.insuranceExpenses,
        this.powerFuel,
        this.financeCost,
        this.depreciationAndAmortisationExpense,
        this.oTHEREXPENSES,
        this.tOTALEXPENSES,
        this.ebitda,
        this.profitBeforeExceptionalAndExtraordinaryItemsAndTax,
        this.exceptionalItems,
        this.profitBeforeExtraordinaryItemsAndTax,
        this.extraordinaryItems,
        this.profitBeforeTax,
        this.currentTax,
        this.deferredTax,
        this.profitLossFromDiscontinuingOperations,
        this.taxExpenseOfDiscontinuingOperations,
        this.profitLoss,
        this.companyLink,
       // this.docUrlId,
        this.natureOfReportStandaloneConsolidated,
        this.dilutedEPSAfterExtraordinaryItems,
        this.incomeInForeignCurrency,
        this.expenditureInForeignCurrency});

  ProfitNLossAoc.fromJson(Map<String, dynamic> json) {
    type = json['Type'];
    category = json['Category'];
    dateAmount = json['date_Amount'];
    fYENDDATE = json['FY_END_DATE'];
    dATEOFAGM = json['DATE_OF_AGM'];
    domesticSalesOfGoodsManufactured =
    json['Domestic_Sales_of_goods_manufactured'];
    domesticSalesOfGoodsTraded = json['Domestic_Sales_of_goods_traded'];
    domesticSupplyOfServices = json['Domestic_Supply_of_services'];
    exportSalesOfGoodsManufactured = json['Export_Sales_of_goods_manufactured'];
    exportSalesOfGoodsTraded = json['Export_Sales_of_goods_traded'];
    exportSupplyOfServices = json['Export_Supply_of_services'];
    otherIncome = json['Other_Income'];
    totalRevenue = json['Total_Revenue'];
    costOfMaterialConsumed = json['Cost_of_Material_consumed'];
    purchaseOfStockInTrade = json['Purchase_of_stock_in_trade'];
    changeInFinishedGoodsInventory = json['Change_in_Finished_goods_inventory'];
    changeInWorkInProgressInventory =
    json['Change_in_work_in_progress_inventory'];
    changeInStockInTradeInventory = json['Change_in_Stock_in_trade_inventory'];
    employeeBenefitExpense = json['Employee_Benefit_Expense'];
    managerialRemuneration = json['Managerial_Remuneration'];
    paymentToAuditors = json['Payment_to_auditors'];
    insuranceExpenses = json['Insurance_Expenses'];
    powerFuel = json['Power_Fuel'];
    financeCost = json['Finance_Cost'];
    depreciationAndAmortisationExpense =
    json['Depreciation_and_Amortisation_expense'];
    oTHEREXPENSES = json['OTHER_EXPENSES'];
    tOTALEXPENSES = json['TOTAL_EXPENSES'];
    ebitda = json['Ebitda'];
    profitBeforeExceptionalAndExtraordinaryItemsAndTax =
    json['Profit_before_exceptional_and_extraordinary_items_and_tax'];
    exceptionalItems = json['Exceptional_items'];
    profitBeforeExtraordinaryItemsAndTax =
    json['Profit_before_extraordinary_items_and_tax'];
    extraordinaryItems = json['Extraordinary_items'];
    profitBeforeTax = json['Profit_before_tax'];
    currentTax = json['Current_Tax'];
    deferredTax = json['Deferred_Tax'];
    profitLossFromDiscontinuingOperations =
    json['ProfitLoss_from_discontinuing_operations'];
    taxExpenseOfDiscontinuingOperations =
    json['Tax_expense_of_discontinuing_operations'];
    profitLoss = json['Profit_Loss'];
    companyLink = json['CompanyLink'];
   // docUrlId = json['DocUrlId'];
    natureOfReportStandaloneConsolidated =
    json['NatureOfReportStandaloneConsolidated'];
    dilutedEPSAfterExtraordinaryItems =
    json['Diluted_EPS_after_extraordinary_items'];
    incomeInForeignCurrency = json['Income_in_foreign_currency'];
    expenditureInForeignCurrency = json['Expenditure_in_foreign_currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Type'] = type;
    data['Category'] = category;
    data['date_Amount'] = dateAmount;
    data['FY_END_DATE'] = fYENDDATE;
    data['DATE_OF_AGM'] = dATEOFAGM;
    data['Domestic_Sales_of_goods_manufactured'] =
        domesticSalesOfGoodsManufactured;
    data['Domestic_Sales_of_goods_traded'] = domesticSalesOfGoodsTraded;
    data['Domestic_Supply_of_services'] = domesticSupplyOfServices;
    data['Export_Sales_of_goods_manufactured'] =
        this.exportSalesOfGoodsManufactured;
    data['Export_Sales_of_goods_traded'] = exportSalesOfGoodsTraded;
    data['Export_Supply_of_services'] = exportSupplyOfServices;
    data['Other_Income'] = otherIncome;
    data['Total_Revenue'] = totalRevenue;
    data['Cost_of_Material_consumed'] = costOfMaterialConsumed;
    data['Purchase_of_stock_in_trade'] = purchaseOfStockInTrade;
    data['Change_in_Finished_goods_inventory'] = changeInFinishedGoodsInventory;
    data['Change_in_work_in_progress_inventory'] = changeInWorkInProgressInventory;
    data['Change_in_Stock_in_trade_inventory'] = changeInStockInTradeInventory;
    data['Employee_Benefit_Expense'] = employeeBenefitExpense;
    data['Managerial_Remuneration'] = managerialRemuneration;
    data['Payment_to_auditors'] = paymentToAuditors;
    data['Insurance_Expenses'] = insuranceExpenses;
    data['Power_Fuel'] = powerFuel;
    data['Finance_Cost'] = financeCost;
    data['Depreciation_and_Amortisation_expense'] =
        depreciationAndAmortisationExpense;
    data['OTHER_EXPENSES'] = oTHEREXPENSES;
    data['TOTAL_EXPENSES'] = tOTALEXPENSES;
    data['Ebitda'] = ebitda;
    data['Profit_before_exceptional_and_extraordinary_items_and_tax'] =
        profitBeforeExceptionalAndExtraordinaryItemsAndTax;
    data['Exceptional_items'] = exceptionalItems;
    data['Profit_before_extraordinary_items_and_tax'] =
        profitBeforeExtraordinaryItemsAndTax;
    data['Extraordinary_items'] = extraordinaryItems;
    data['Profit_before_tax'] = profitBeforeTax;
    data['Current_Tax'] = currentTax;
    data['Deferred_Tax'] = deferredTax;
    data['ProfitLoss_from_discontinuing_operations'] =
        profitLossFromDiscontinuingOperations;
    data['Tax_expense_of_discontinuing_operations'] =
        taxExpenseOfDiscontinuingOperations;
    data['Profit_Loss'] = profitLoss;
    data['CompanyLink'] = companyLink;
   // data['DocUrlId'] = this.docUrlId;
    data['NatureOfReportStandaloneConsolidated'] =
        natureOfReportStandaloneConsolidated;
    data['Diluted_EPS_after_extraordinary_items'] =
        dilutedEPSAfterExtraordinaryItems;
    data['Income_in_foreign_currency'] = incomeInForeignCurrency;
    data['Expenditure_in_foreign_currency'] = expenditureInForeignCurrency;
    return data;
  }
}

class ProfitNLossAOCNBFC {
  String? type;
  String? cin;
  String? companyId;
  String? fYSTARTDATE;
  String? fYENDDATE;
  String? dATEOFAGM;
  String? yearOfData;
  String? natureOfData;
  String? dataSource;
  double? interestIncome;
  double? dividendIncome;
  double? otherOperatingIncome;
  double? totalRevenueFromOperations;
  double? otherIncome;
  double? totalIncome;
  double? expenses;
  double? financeCosts;
  double? costOfMaterialsConsumed;
  double? purchasesOfStockInTrade;
  double? changesInInventories;
  double? employeeBenefitsExpenses;
  double? depreciationAndAmortization;
  double? otherExpenses;
  double? totalExpenses;
  double? profitBeforeExceptionalItems;
  double? exceptionalItems;
  double? profitBeforeTax;
  double? taxExpense;
  double? profitFromContinuingOperations;
  double? profitFromDiscontinuedOperations;
  double? profitForThePeriod;
  double? eBITA;
 // double? docUrlid;
  String? docUrl;

  ProfitNLossAOCNBFC(
      {this.type,
        this.cin,
        this.companyId,
        this.fYSTARTDATE,
        this.fYENDDATE,
        this.dATEOFAGM,
        this.yearOfData,
        this.natureOfData,
        this.dataSource,
        this.interestIncome,
        this.dividendIncome,
        this.otherOperatingIncome,
        this.totalRevenueFromOperations,
        this.otherIncome,
        this.totalIncome,
        this.expenses,
        this.financeCosts,
        this.costOfMaterialsConsumed,
        this.purchasesOfStockInTrade,
        this.changesInInventories,
        this.employeeBenefitsExpenses,
        this.depreciationAndAmortization,
        this.otherExpenses,
        this.totalExpenses,
        this.profitBeforeExceptionalItems,
        this.exceptionalItems,
        this.profitBeforeTax,
        this.taxExpense,
        this.profitFromContinuingOperations,
        this.profitFromDiscontinuedOperations,
        this.profitForThePeriod,
        this.eBITA,
        //this.docUrlid,
        this.docUrl});

  ProfitNLossAOCNBFC.fromJson(Map<String, dynamic> json) {
    type = json['Type'];
    cin = json['Cin'];
    companyId = json['Company_Id'];
    fYSTARTDATE = json['FY_START_DATE'];
    fYENDDATE = json['FY_END_DATE'];
    dATEOFAGM = json['DATE_OF_AGM'];
    yearOfData = json['YearOfData'];
    natureOfData = json['NatureOfData'];
    dataSource = json['Data_Source'];
    interestIncome = json['Interest_Income'];
    dividendIncome = json['Dividend_Income'];
    otherOperatingIncome = json['Other_Operating_Income'];
    totalRevenueFromOperations = json['Total_Revenue_from_Operations'];
    otherIncome = json['Other_Income'];
    totalIncome = json['Total_Income'];
    expenses = json['Expenses'];
    financeCosts = json['Finance_Costs'];
    costOfMaterialsConsumed = json['Cost_of_Materials_Consumed'];
    purchasesOfStockInTrade = json['Purchases_of_Stock_in_trade'];
    changesInInventories = json['Changes_In_Inventories'];
    employeeBenefitsExpenses = json['Employee_Benefits_Expenses'];
    depreciationAndAmortization = json['Depreciation_and_Amortization'];
    otherExpenses = json['Other_Expenses'];
    totalExpenses = json['Total_Expenses'];
    profitBeforeExceptionalItems = json['Profit_Before_Exceptional_Items'];
    exceptionalItems = json['Exceptional_Items'];
    profitBeforeTax = json['Profit_Before_Tax'];
    taxExpense = json['Tax_Expense'];
    profitFromContinuingOperations = json['Profit_from_Continuing_Operations'];
    profitFromDiscontinuedOperations =
    json['Profit_from_Discontinued_Operations'];
    profitForThePeriod = json['Profit_for_the_Period'];
    eBITA = json['EBITA'];
   // docUrlid = json['DocUrlid'];
    docUrl = json['DocUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Type'] = this.type;
    data['Cin'] = this.cin;
    data['Company_Id'] = this.companyId;
    data['FY_START_DATE'] = this.fYSTARTDATE;
    data['FY_END_DATE'] = this.fYENDDATE;
    data['DATE_OF_AGM'] = this.dATEOFAGM;
    data['YearOfData'] = this.yearOfData;
    data['NatureOfData'] = this.natureOfData;
    data['Data_Source'] = this.dataSource;
    data['Interest_Income'] = this.interestIncome;
    data['Dividend_Income'] = this.dividendIncome;
    data['Other_Operating_Income'] = this.otherOperatingIncome;
    data['Total_Revenue_from_Operations'] = this.totalRevenueFromOperations;
    data['Other_Income'] = this.otherIncome;
    data['Total_Income'] = this.totalIncome;
    data['Expenses'] = this.expenses;
    data['Finance_Costs'] = this.financeCosts;
    data['Cost_of_Materials_Consumed'] = this.costOfMaterialsConsumed;
    data['Purchases_of_Stock_in_trade'] = this.purchasesOfStockInTrade;
    data['Changes_In_Inventories'] = this.changesInInventories;
    data['Employee_Benefits_Expenses'] = this.employeeBenefitsExpenses;
    data['Depreciation_and_Amortization'] = this.depreciationAndAmortization;
    data['Other_Expenses'] = this.otherExpenses;
    data['Total_Expenses'] = this.totalExpenses;
    data['Profit_Before_Exceptional_Items'] = this.profitBeforeExceptionalItems;
    data['Exceptional_Items'] = this.exceptionalItems;
    data['Profit_Before_Tax'] = this.profitBeforeTax;
    data['Tax_Expense'] = this.taxExpense;
    data['Profit_from_Continuing_Operations'] =
        this.profitFromContinuingOperations;
    data['Profit_from_Discontinued_Operations'] =
        this.profitFromDiscontinuedOperations;
    data['Profit_for_the_Period'] = this.profitForThePeriod;
    data['EBITA'] = this.eBITA;
  //  data['DocUrlid'] = this.docUrlid;
    data['DocUrl'] = this.docUrl;
    return data;
  }
}

class RatioDetails {
  double? totalRevenueC;
  double? profitLossC;
  double? netWorthC;
  double? cashBalanceC;
  double? totalAssetsC;
  double? outsiderLiabilityAL;
  String? natureOfReportStandaloneConsolidated;
  String? financialYear;
  String? fYENDDATE;
  String? cin;
  String? companyId;
  double? ebitdaAL;
  double? totalEquityC;
  String? fYSTARTDATE;
  double? revenueGrowthRC;
  double? ebitdaMarginRA;
  double? netProfitMarginRC;
  double? returnOnEquityRC;
  double? debtEquityRC;
  double? inventorySalesDaysRC;
  double? debtorsSalesDaysRC;
  double? pAYABLESTOSALESRC;
  double? cashConversionCycleDaysRC;
  double? sALESTOFIXEDASSETSRC;
  double? rETURNONCAPITALEMPLOYEDRA;
  double? eQUITYMULTIPLIERRC;
  double? cURRENTRATIORA;
  double? lIQUIDITYRATIORA;
  double? iNTERESTCOVERAGERATIORA;
  double? nETWORTHRATIORA;
  double? rEARNINGPERSHARERA;
  double? cASHRATIORA;
  double? dEBTTOEBITDARA;
  double? totalLoansTotalAssetsRN;
  double? totalInvestmentsTotalAssetsRN;
  double? receivablesTotalAssetsRN;
  double? totalRevenueFromOperationsTotalFinancialAssetsRN;
  double? returnOnPartnersFundRL;
  double? debtPartnersFundRL;

  RatioDetails(
      {this.totalRevenueC,
        this.profitLossC,
        this.netWorthC,
        this.cashBalanceC,
        this.totalAssetsC,
        this.outsiderLiabilityAL,
        this.natureOfReportStandaloneConsolidated,
        this.financialYear,
        this.fYENDDATE,
        this.cin,
        this.companyId,
        this.ebitdaAL,
        this.totalEquityC,
        this.fYSTARTDATE,
        this.revenueGrowthRC,
        this.ebitdaMarginRA,
        this.netProfitMarginRC,
        this.returnOnEquityRC,
        this.debtEquityRC,
        this.inventorySalesDaysRC,
        this.debtorsSalesDaysRC,
        this.pAYABLESTOSALESRC,
        this.cashConversionCycleDaysRC,
        this.sALESTOFIXEDASSETSRC,
        this.rETURNONCAPITALEMPLOYEDRA,
        this.eQUITYMULTIPLIERRC,
        this.cURRENTRATIORA,
        this.lIQUIDITYRATIORA,
        this.iNTERESTCOVERAGERATIORA,
        this.nETWORTHRATIORA,
        this.rEARNINGPERSHARERA,
        this.cASHRATIORA,
        this.dEBTTOEBITDARA,
        this.totalLoansTotalAssetsRN,
        this.totalInvestmentsTotalAssetsRN,
        this.receivablesTotalAssetsRN,
        this.totalRevenueFromOperationsTotalFinancialAssetsRN,
        this.returnOnPartnersFundRL,
        this.debtPartnersFundRL});

  RatioDetails.fromJson(Map<String, dynamic> json) {
    totalRevenueC = json['Total_Revenue_C'];
    profitLossC = json['Profit_Loss_C'];
    netWorthC = json['Net_Worth_C'];
    cashBalanceC = json['Cash_Balance_C'];
    totalAssetsC = json['Total_Assets_C'];
    outsiderLiabilityAL = json['Outsider_Liability_AL'];
    natureOfReportStandaloneConsolidated =
    json['NatureOfReportStandaloneConsolidated'];
    financialYear = json['Financial_Year'];
    fYENDDATE = json['FY_END_DATE'];
    cin = json['cin'];
    companyId = json['Company_id'];
    ebitdaAL = json['Ebitda_AL'];
    totalEquityC = json['Total_Equity_C'];
    fYSTARTDATE = json['FY_START_DATE'];
    revenueGrowthRC = json['Revenue_Growth_RC'];
    ebitdaMarginRA = json['Ebitda_Margin_RA'];
    netProfitMarginRC = json['Net_Profit_Margin_RC'];
    returnOnEquityRC = json['Return_on_Equity_RC'];
    debtEquityRC = json['Debt_Equity_RC'];
    inventorySalesDaysRC = json['Inventory_Sales_Days_RC'];
    debtorsSalesDaysRC = json['Debtors_Sales_Days_RC'];
    pAYABLESTOSALESRC = json['PAYABLES_TO_SALES_RC'];
    cashConversionCycleDaysRC = json['Cash_Conversion_Cycle_Days_RC'];
    sALESTOFIXEDASSETSRC = json['SALES_TO_FIXED_ASSETS_RC'];
    rETURNONCAPITALEMPLOYEDRA = json['RETURN_ON_CAPITAL_EMPLOYED_RA'];
    eQUITYMULTIPLIERRC = json['EQUITY_MULTIPLIER_RC'];
    cURRENTRATIORA = json['CURRENT_RATIO_RA'];
    lIQUIDITYRATIORA = json['LIQUIDITY_RATIO_RA'];
    iNTERESTCOVERAGERATIORA = json['INTEREST_COVERAGE_RATIO_RA'];
    nETWORTHRATIORA = json['NET_WORTH_RATIO_RA'];
    rEARNINGPERSHARERA = json['R_EARNING_PER_SHARE_RA'];
    cASHRATIORA = json['CASH_RATIO_RA'];
    dEBTTOEBITDARA = json['DEBT_TO_EBITDA_RA'];
    totalLoansTotalAssetsRN = json['Total_Loans_Total_Assets_RN'];
    totalInvestmentsTotalAssetsRN = json['Total_Investments_Total_Assets_RN'];
    receivablesTotalAssetsRN = json['Receivables_Total_Assets_RN'];
    totalRevenueFromOperationsTotalFinancialAssetsRN =
    json['Total_Revenue_from_Operations_Total_Financial_Assets_RN'];
    returnOnPartnersFundRL = json['Return_on_Partners_Fund_RL'];
    debtPartnersFundRL = json['Debt_Partners_Fund_RL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Total_Revenue_C'] = this.totalRevenueC;
    data['Profit_Loss_C'] = this.profitLossC;
    data['Net_Worth_C'] = this.netWorthC;
    data['Cash_Balance_C'] = this.cashBalanceC;
    data['Total_Assets_C'] = this.totalAssetsC;
    data['Outsider_Liability_AL'] = this.outsiderLiabilityAL;
    data['NatureOfReportStandaloneConsolidated'] =
        this.natureOfReportStandaloneConsolidated;
    data['Financial_Year'] = this.financialYear;
    data['FY_END_DATE'] = this.fYENDDATE;
    data['cin'] = this.cin;
    data['Company_id'] = this.companyId;
    data['Ebitda_AL'] = this.ebitdaAL;
    data['Total_Equity_C'] = this.totalEquityC;
    data['FY_START_DATE'] = this.fYSTARTDATE;
    data['Revenue_Growth_RC'] = this.revenueGrowthRC;
    data['Ebitda_Margin_RA'] = this.ebitdaMarginRA;
    data['Net_Profit_Margin_RC'] = this.netProfitMarginRC;
    data['Return_on_Equity_RC'] = this.returnOnEquityRC;
    data['Debt_Equity_RC'] = this.debtEquityRC;
    data['Inventory_Sales_Days_RC'] = this.inventorySalesDaysRC;
    data['Debtors_Sales_Days_RC'] = this.debtorsSalesDaysRC;
    data['PAYABLES_TO_SALES_RC'] = this.pAYABLESTOSALESRC;
    data['Cash_Conversion_Cycle_Days_RC'] = this.cashConversionCycleDaysRC;
    data['SALES_TO_FIXED_ASSETS_RC'] = this.sALESTOFIXEDASSETSRC;
    data['RETURN_ON_CAPITAL_EMPLOYED_RA'] = this.rETURNONCAPITALEMPLOYEDRA;
    data['EQUITY_MULTIPLIER_RC'] = this.eQUITYMULTIPLIERRC;
    data['CURRENT_RATIO_RA'] = this.cURRENTRATIORA;
    data['LIQUIDITY_RATIO_RA'] = this.lIQUIDITYRATIORA;
    data['INTEREST_COVERAGE_RATIO_RA'] = this.iNTERESTCOVERAGERATIORA;
    data['NET_WORTH_RATIO_RA'] = this.nETWORTHRATIORA;
    data['R_EARNING_PER_SHARE_RA'] = this.rEARNINGPERSHARERA;
    data['CASH_RATIO_RA'] = this.cASHRATIORA;
    data['DEBT_TO_EBITDA_RA'] = this.dEBTTOEBITDARA;
    data['Total_Loans_Total_Assets_RN'] = this.totalLoansTotalAssetsRN;
    data['Total_Investments_Total_Assets_RN'] =
        this.totalInvestmentsTotalAssetsRN;
    data['Receivables_Total_Assets_RN'] = this.receivablesTotalAssetsRN;
    data['Total_Revenue_from_Operations_Total_Financial_Assets_RN'] =
        this.totalRevenueFromOperationsTotalFinancialAssetsRN;
    data['Return_on_Partners_Fund_RL'] = this.returnOnPartnersFundRL;
    data['Debt_Partners_Fund_RL'] = this.debtPartnersFundRL;
    return data;
  }
}
