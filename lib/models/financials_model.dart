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
  String? balanceSheetAOCNBFC;
  String? balanceSheetLLP;
  List<ProfitNLossAoc>? profitNLossAoc;
  String? profitNLossAOCNBFC;
  String? profitNLossLLP;
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
    balanceSheetAOCNBFC = json['BalanceSheet_AOC_NBFC'];
    balanceSheetLLP = json['Balance_Sheet_LLP'];
    if (json['ProfitNLoss_Aoc'] != null) {
      profitNLossAoc = <ProfitNLossAoc>[];
      json['ProfitNLoss_Aoc'].forEach((v) {
        profitNLossAoc!.add(new ProfitNLossAoc.fromJson(v));
      });
    }
    profitNLossAOCNBFC = json['ProfitNLoss_AOC_NBFC'];
    profitNLossLLP = json['Profit_N_Loss_LLP'];
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
    data['BalanceSheet_AOC_NBFC'] = this.balanceSheetAOCNBFC;
    data['Balance_Sheet_LLP'] = this.balanceSheetLLP;
    if (this.profitNLossAoc != null) {
      data['ProfitNLoss_Aoc'] =
          this.profitNLossAoc!.map((v) => v.toJson()).toList();
    }
    data['ProfitNLoss_AOC_NBFC'] = this.profitNLossAOCNBFC;
    data['Profit_N_Loss_LLP'] = this.profitNLossLLP;
    if (this.ratioDetails != null) {
      data['Ratio_Details'] =
          this.ratioDetails!.map((v) => v.toJson()).toList();
    }
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
  String? exportSalesOfGoodsTraded;
  String? exportSupplyOfServices;
  double? otherIncome;
  double? totalRevenue;
  double? costOfMaterialConsumed;
  double? purchaseOfStockInTrade;
  double? changeInFinishedGoodsInventory;
  String? changeInWorkInProgressInventory;
  String? changeInStockInTradeInventory;
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
  String? profitBeforeExtraordinaryItemsAndTax;
  String? extraordinaryItems;
  double? profitBeforeTax;
  double? currentTax;
  double? deferredTax;
  String? profitLossFromDiscontinuingOperations;
  String? taxExpenseOfDiscontinuingOperations;
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
    data['Type'] = this.type;
    data['Category'] = this.category;
    data['date_Amount'] = this.dateAmount;
    data['FY_END_DATE'] = this.fYENDDATE;
    data['DATE_OF_AGM'] = this.dATEOFAGM;
    data['Domestic_Sales_of_goods_manufactured'] =
        this.domesticSalesOfGoodsManufactured;
    data['Domestic_Sales_of_goods_traded'] = this.domesticSalesOfGoodsTraded;
    data['Domestic_Supply_of_services'] = this.domesticSupplyOfServices;
    data['Export_Sales_of_goods_manufactured'] =
        this.exportSalesOfGoodsManufactured;
    data['Export_Sales_of_goods_traded'] = this.exportSalesOfGoodsTraded;
    data['Export_Supply_of_services'] = this.exportSupplyOfServices;
    data['Other_Income'] = this.otherIncome;
    data['Total_Revenue'] = this.totalRevenue;
    data['Cost_of_Material_consumed'] = this.costOfMaterialConsumed;
    data['Purchase_of_stock_in_trade'] = this.purchaseOfStockInTrade;
    data['Change_in_Finished_goods_inventory'] =
        this.changeInFinishedGoodsInventory;
    data['Change_in_work_in_progress_inventory'] =
        this.changeInWorkInProgressInventory;
    data['Change_in_Stock_in_trade_inventory'] =
        this.changeInStockInTradeInventory;
    data['Employee_Benefit_Expense'] = this.employeeBenefitExpense;
    data['Managerial_Remuneration'] = this.managerialRemuneration;
    data['Payment_to_auditors'] = this.paymentToAuditors;
    data['Insurance_Expenses'] = this.insuranceExpenses;
    data['Power_Fuel'] = this.powerFuel;
    data['Finance_Cost'] = this.financeCost;
    data['Depreciation_and_Amortisation_expense'] =
        this.depreciationAndAmortisationExpense;
    data['OTHER_EXPENSES'] = this.oTHEREXPENSES;
    data['TOTAL_EXPENSES'] = this.tOTALEXPENSES;
    data['Ebitda'] = this.ebitda;
    data['Profit_before_exceptional_and_extraordinary_items_and_tax'] =
        this.profitBeforeExceptionalAndExtraordinaryItemsAndTax;
    data['Exceptional_items'] = this.exceptionalItems;
    data['Profit_before_extraordinary_items_and_tax'] =
        this.profitBeforeExtraordinaryItemsAndTax;
    data['Extraordinary_items'] = this.extraordinaryItems;
    data['Profit_before_tax'] = this.profitBeforeTax;
    data['Current_Tax'] = this.currentTax;
    data['Deferred_Tax'] = this.deferredTax;
    data['ProfitLoss_from_discontinuing_operations'] =
        this.profitLossFromDiscontinuingOperations;
    data['Tax_expense_of_discontinuing_operations'] =
        this.taxExpenseOfDiscontinuingOperations;
    data['Profit_Loss'] = this.profitLoss;
    data['CompanyLink'] = this.companyLink;
   // data['DocUrlId'] = this.docUrlId;
    data['NatureOfReportStandaloneConsolidated'] =
        this.natureOfReportStandaloneConsolidated;
    data['Diluted_EPS_after_extraordinary_items'] =
        this.dilutedEPSAfterExtraordinaryItems;
    data['Income_in_foreign_currency'] = this.incomeInForeignCurrency;
    data['Expenditure_in_foreign_currency'] = this.expenditureInForeignCurrency;
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
