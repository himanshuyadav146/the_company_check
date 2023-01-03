// To parse this JSON data, do
//
//     final response = responseFromJson(jsonString);

import 'dart:convert';

Response responseFromJson(String str) => Response.fromJson(json.decode(str));

class Response {
  Response({
    this.status,
    this.message,
    this.data,
  });

  bool? status;
  String? message;
  Data? data;

  factory Response.fromJson(Map<String, dynamic> json) => Response(
        status: json["status"] == null ? null : json["status"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );
}

class Data {
  Data({
    this.balanceSheetAoc,
    this.profitNLossAoc,
    this.ratioDetails,
  });

  List<BalanceSheetAoc>? balanceSheetAoc;
  List<ProfitNLossAoc>? profitNLossAoc;
  List<RatioDetail>? ratioDetails;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        balanceSheetAoc: json["BalanceSheet_Aoc"] == null
            ? null
            : List<BalanceSheetAoc>.from(json["BalanceSheet_Aoc"]
                .map((x) => BalanceSheetAoc.fromJson(x))),
        profitNLossAoc: json["ProfitNLoss_Aoc"] == null
            ? null
            : List<ProfitNLossAoc>.from(
                json["ProfitNLoss_Aoc"].map((x) => ProfitNLossAoc.fromJson(x))),
        ratioDetails: json["Ratio_Details"] == null
            ? null
            : List<RatioDetail>.from(
                json["Ratio_Details"].map((x) => RatioDetail.fromJson(x))),
      );
}

class BalanceSheetAoc {
  BalanceSheetAoc({
    this.type,
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
    this.fyEndDate,
    this.dateOfAgm,
    this.isSubHeader,
    this.companyLink,
    this.otherIncome,
    this.financeCost,
    this.depreciationAndAmortisationExpense,
    this.profitBeforeTax,
    this.otherIntangibleAssets,
    this.docUrlId,
    this.natureOfReportStandaloneConsolidated,
    this.totalRevenue,
    this.netWorthOfCompany,
    this.profitLoss,
  });

  String? type;
  int? equityShareCapital;
  int? reservesAndSurplus;
  int? moneyReceivedAgainstShareWarrants;
  int? otherEquity;
  int? totalEquity;
  int? longTermBorrowings;
  int? totalNonCurrentLiabilities;
  int? deferredTaxLiabilitiesNet;
  int? otherLongTermLiabilities;
  int? longTermProvisions;
  int? shortTermBorrowings;
  int? tradePayables;
  int? otherCurrentLiabilities;
  int? shortTermProvisions;
  int? totalCurrentLiabilites;
  int? totalEquitiesAndLiabilites;
  int? tangibleAssets;
  int? intangibleAssets;
  int? capitalWorkinprogress;
  int? intangibleAssetsUnderDevelopment;
  int? noncurrentInvestments;
  int? deferredTaxAssetsNet;
  int? longTermLoansAndAdvances;
  int? otherNoncurrentAssets;
  int? totalNonCurrentAssets;
  int? totalCurrentAsset;
  int? totalAsset;
  int? currentInvestment;
  int? inventories;
  int? tradeReceivables;
  int? cashAndCashEquivalents;
  int? cashAndBankBalance;
  int? shortTermLoansAndAdvances;
  int? otherCurrentAssets;
  DateTime? fyEndDate;
  DateTime? dateOfAgm;
  bool? isSubHeader;
  String? companyLink;
  int? otherIncome;
  int? financeCost;
  int? depreciationAndAmortisationExpense;
  int? profitBeforeTax;
  int? otherIntangibleAssets;
  int? docUrlId;
  String? natureOfReportStandaloneConsolidated;
  int? totalRevenue;
  int? netWorthOfCompany;
  int? profitLoss;

  factory BalanceSheetAoc.fromJson(Map<String, dynamic> json) =>
      BalanceSheetAoc(
        type: json["Type"] == null ? null : json["Type"],
        equityShareCapital: json["Equity_Share_capital"] == null
            ? null
            : json["Equity_Share_capital"],
        reservesAndSurplus: json["Reserves_and_surplus"] == null
            ? null
            : json["Reserves_and_surplus"],
        moneyReceivedAgainstShareWarrants:
            json["Money_received_against_share_warrants"] == null
                ? null
                : json["Money_received_against_share_warrants"],
        otherEquity: json["Other_equity"] == null ? null : json["Other_equity"],
        totalEquity: json["Total_Equity"] == null ? null : json["Total_Equity"],
        longTermBorrowings: json["Long_term_borrowings"] == null
            ? null
            : json["Long_term_borrowings"],
        totalNonCurrentLiabilities:
            json["Total_Non_Current_Liabilities"] == null
                ? null
                : json["Total_Non_Current_Liabilities"],
        deferredTaxLiabilitiesNet: json["Deferred_tax_liabilities_net"] == null
            ? null
            : json["Deferred_tax_liabilities_net"],
        otherLongTermLiabilities: json["Other_long_term_liabilities"] == null
            ? null
            : json["Other_long_term_liabilities"],
        longTermProvisions: json["Long_term_provisions"] == null
            ? null
            : json["Long_term_provisions"],
        shortTermBorrowings: json["Short_term_borrowings"] == null
            ? null
            : json["Short_term_borrowings"],
        tradePayables:
            json["Trade_payables"] == null ? null : json["Trade_payables"],
        otherCurrentLiabilities: json["Other_current_liabilities"] == null
            ? null
            : json["Other_current_liabilities"],
        shortTermProvisions: json["Short_term_provisions"] == null
            ? null
            : json["Short_term_provisions"],
        totalCurrentLiabilites: json["Total_Current_Liabilites"] == null
            ? null
            : json["Total_Current_Liabilites"],
        totalEquitiesAndLiabilites:
            json["Total_Equities_and_Liabilites"] == null
                ? null
                : json["Total_Equities_and_Liabilites"],
        tangibleAssets:
            json["Tangible_assets"] == null ? null : json["Tangible_assets"],
        intangibleAssets: json["Intangible_assets"] == null
            ? null
            : json["Intangible_assets"],
        capitalWorkinprogress: json["Capital_workinprogress"] == null
            ? null
            : json["Capital_workinprogress"],
        intangibleAssetsUnderDevelopment:
            json["Intangible_assets_under_development"] == null
                ? null
                : json["Intangible_assets_under_development"],
        noncurrentInvestments: json["Noncurrent_Investments"] == null
            ? null
            : json["Noncurrent_Investments"],
        deferredTaxAssetsNet: json["Deferred_tax_assets_net"] == null
            ? null
            : json["Deferred_tax_assets_net"],
        longTermLoansAndAdvances: json["Long_term_loans_and_advances"] == null
            ? null
            : json["Long_term_loans_and_advances"],
        otherNoncurrentAssets: json["Other_noncurrent_assets"] == null
            ? null
            : json["Other_noncurrent_assets"],
        totalNonCurrentAssets: json["Total_Non_Current_Assets"] == null
            ? null
            : json["Total_Non_Current_Assets"],
        totalCurrentAsset: json["Total_Current_Asset"] == null
            ? null
            : json["Total_Current_Asset"],
        totalAsset: json["Total_Asset"] == null ? null : json["Total_Asset"],
        currentInvestment: json["Current_Investment"] == null
            ? null
            : json["Current_Investment"],
        inventories: json["Inventories"] == null ? null : json["Inventories"],
        tradeReceivables: json["Trade_receivables"] == null
            ? null
            : json["Trade_receivables"],
        cashAndCashEquivalents: json["Cash_and_cash_equivalents"] == null
            ? null
            : json["Cash_and_cash_equivalents"],
        cashAndBankBalance: json["Cash_and_bank_balance"] == null
            ? null
            : json["Cash_and_bank_balance"],
        shortTermLoansAndAdvances: json["Short_term_loans_and_advances"] == null
            ? null
            : json["Short_term_loans_and_advances"],
        otherCurrentAssets: json["Other_current_assets"] == null
            ? null
            : json["Other_current_assets"],
        fyEndDate: json["FY_END_DATE"] == null
            ? null
            : DateTime.parse(json["FY_END_DATE"]),
        dateOfAgm: json["DATE_OF_AGM"] == null
            ? null
            : DateTime.parse(json["DATE_OF_AGM"]),
        isSubHeader: json["isSubHeader"] == null ? null : json["isSubHeader"],
        companyLink: json["CompanyLink"] == null ? null : json["CompanyLink"],
        otherIncome: json["Other_Income"] == null ? null : json["Other_Income"],
        financeCost: json["Finance_Cost"] == null ? null : json["Finance_Cost"],
        depreciationAndAmortisationExpense:
            json["Depreciation_and_Amortisation_expense"] == null
                ? null
                : json["Depreciation_and_Amortisation_expense"],
        profitBeforeTax: json["Profit_before_tax"] == null
            ? null
            : json["Profit_before_tax"],
        otherIntangibleAssets: json["Other_Intangible_assets"] == null
            ? null
            : json["Other_Intangible_assets"],
        docUrlId: json["DocUrlId"] == null ? null : json["DocUrlId"],
        natureOfReportStandaloneConsolidated:
            json["NatureOfReportStandaloneConsolidated"] == null
                ? null
                : json["NatureOfReportStandaloneConsolidated"],
        totalRevenue:
            json["Total_Revenue"] == null ? null : json["Total_Revenue"],
        netWorthOfCompany: json["NetWorthOfCompany"] == null
            ? null
            : json["NetWorthOfCompany"],
        profitLoss: json["Profit_Loss"] == null ? null : json["Profit_Loss"],
      );
  
  Map<String, dynamic> toJson() => {
        "Type": type == null ? null : type,
        "Equity_Share_capital":
            equityShareCapital == null ? null : equityShareCapital,
        "Reserves_and_surplus":
            reservesAndSurplus == null ? null : reservesAndSurplus,
        "Money_received_against_share_warrants":
            moneyReceivedAgainstShareWarrants == null
                ? null
                : moneyReceivedAgainstShareWarrants,
        "Other_equity": otherEquity == null ? null : otherEquity,
        "Total_Equity": totalEquity == null ? null : totalEquity,
        "Long_term_borrowings":
            longTermBorrowings == null ? null : longTermBorrowings,
        "Total_Non_Current_Liabilities": totalNonCurrentLiabilities == null
            ? null
            : totalNonCurrentLiabilities,
        "Deferred_tax_liabilities_net": deferredTaxLiabilitiesNet == null
            ? null
            : deferredTaxLiabilitiesNet,
        "Other_long_term_liabilities":
            otherLongTermLiabilities == null ? null : otherLongTermLiabilities,
        "Long_term_provisions":
            longTermProvisions == null ? null : longTermProvisions,
        "Short_term_borrowings":
            shortTermBorrowings == null ? null : shortTermBorrowings,
        "Trade_payables": tradePayables == null ? null : tradePayables,
        "Other_current_liabilities":
            otherCurrentLiabilities == null ? null : otherCurrentLiabilities,
        "Short_term_provisions":
            shortTermProvisions == null ? null : shortTermProvisions,
        "Total_Current_Liabilites":
            totalCurrentLiabilites == null ? null : totalCurrentLiabilites,
        "Total_Equities_and_Liabilites": totalEquitiesAndLiabilites == null
            ? null
            : totalEquitiesAndLiabilites,
        "Tangible_assets": tangibleAssets == null ? null : tangibleAssets,
        "Intangible_assets": intangibleAssets == null ? null : intangibleAssets,
        "Capital_workinprogress":
            capitalWorkinprogress == null ? null : capitalWorkinprogress,
        "Intangible_assets_under_development":
            intangibleAssetsUnderDevelopment == null
                ? null
                : intangibleAssetsUnderDevelopment,
        "Noncurrent_Investments":
            noncurrentInvestments == null ? null : noncurrentInvestments,
        "Deferred_tax_assets_net":
            deferredTaxAssetsNet == null ? null : deferredTaxAssetsNet,
        "Long_term_loans_and_advances":
            longTermLoansAndAdvances == null ? null : longTermLoansAndAdvances,
        "Other_noncurrent_assets":
            otherNoncurrentAssets == null ? null : otherNoncurrentAssets,
        "Total_Non_Current_Assets":
            totalNonCurrentAssets == null ? null : totalNonCurrentAssets,
        "Total_Current_Asset":
            totalCurrentAsset == null ? null : totalCurrentAsset,
        "Total_Asset": totalAsset == null ? null : totalAsset,
        "Current_Investment":
            currentInvestment == null ? null : currentInvestment,
        "Inventories": inventories == null ? null : inventories,
        "Trade_receivables": tradeReceivables == null ? null : tradeReceivables,
        "Cash_and_cash_equivalents":
            cashAndCashEquivalents == null ? null : cashAndCashEquivalents,
        "Cash_and_bank_balance":
            cashAndBankBalance == null ? null : cashAndBankBalance,
        "Short_term_loans_and_advances": shortTermLoansAndAdvances == null
            ? null
            : shortTermLoansAndAdvances,
        "Other_current_assets":
            otherCurrentAssets == null ? null : otherCurrentAssets,
        "FY_END_DATE": fyEndDate == null ? null : fyEndDate?.toIso8601String(),
        "DATE_OF_AGM": dateOfAgm == null ? null : dateOfAgm?.toIso8601String(),
        "isSubHeader": isSubHeader == null ? null : isSubHeader,
        "CompanyLink": companyLink == null ? null : companyLink,
        "Other_Income": otherIncome == null ? null : otherIncome,
        "Finance_Cost": financeCost == null ? null : financeCost,
        "Depreciation_and_Amortisation_expense":
            depreciationAndAmortisationExpense == null
                ? null
                : depreciationAndAmortisationExpense,
        "Profit_before_tax": profitBeforeTax == null ? null : profitBeforeTax,
        "Other_Intangible_assets":
            otherIntangibleAssets == null ? null : otherIntangibleAssets,
        "DocUrlId": docUrlId == null ? null : docUrlId,
        "NatureOfReportStandaloneConsolidated":
            natureOfReportStandaloneConsolidated == null
                ? null
                : natureOfReportStandaloneConsolidated,
        "Total_Revenue": totalRevenue == null ? null : totalRevenue,
        "NetWorthOfCompany":
            netWorthOfCompany == null ? null : netWorthOfCompany,
        "Profit_Loss": profitLoss == null ? null : profitLoss,
      };
}

class ProfitNLossAoc {
  ProfitNLossAoc({
    this.type,
    this.fyEndDate,
    this.domesticSalesOfGoodsManufactured,
    this.domesticSalesOfGoodsTraded,
    this.domesticSupplyOfServices,
    this.exportSalesOfGoodsManufactured,
    this.otherIncome,
    this.totalRevenue,
    this.costOfMaterialConsumed,
    this.purchaseOfStockInTrade,
    this.changeInFinishedGoodsInventory,
    this.employeeBenefitExpense,
    this.managerialRemuneration,
    this.paymentToAuditors,
    this.insuranceExpenses,
    this.powerFuel,
    this.financeCost,
    this.depreciationAndAmortisationExpense,
    this.otherExpenses,
    this.totalExpenses,
    this.ebitda,
    this.profitBeforeExceptionalAndExtraordinaryItemsAndTax,
    this.exceptionalItems,
    this.profitBeforeTax,
    this.currentTax,
    this.deferredTax,
    this.profitLoss,
    this.companyLink,
    this.docUrlId,
    this.natureOfReportStandaloneConsolidated,
    this.dilutedEpsAfterExtraordinaryItems,
  });

  String? type;
  DateTime? fyEndDate;
  int? domesticSalesOfGoodsManufactured;
  int? domesticSalesOfGoodsTraded;
  int? domesticSupplyOfServices;
  int? exportSalesOfGoodsManufactured;
  int? otherIncome;
  int? totalRevenue;
  int? costOfMaterialConsumed;
  int? purchaseOfStockInTrade;
  int? changeInFinishedGoodsInventory;
  int? employeeBenefitExpense;
  int? managerialRemuneration;
  int? paymentToAuditors;
  int? insuranceExpenses;
  int? powerFuel;
  int? financeCost;
  int? depreciationAndAmortisationExpense;
  int? otherExpenses;
  int? totalExpenses;
  int? ebitda;
  int? profitBeforeExceptionalAndExtraordinaryItemsAndTax;
  int? exceptionalItems;
  int? profitBeforeTax;
  int? currentTax;
  int? deferredTax;
  int? profitLoss;
  String? companyLink;
  String? docUrlId;
  String? natureOfReportStandaloneConsolidated;
  double? dilutedEpsAfterExtraordinaryItems;

  factory ProfitNLossAoc.fromJson(Map<String, dynamic> json) => ProfitNLossAoc(
        type: json["Type"] == null ? null : json["Type"],
        fyEndDate: json["FY_END_DATE"] == null
            ? null
            : DateTime.parse(json["FY_END_DATE"]),
        domesticSalesOfGoodsManufactured:
            json["Domestic_Sales_of_goods_manufactured"] == null
                ? null
                : json["Domestic_Sales_of_goods_manufactured"],
        domesticSalesOfGoodsTraded:
            json["Domestic_Sales_of_goods_traded"] == null
                ? null
                : json["Domestic_Sales_of_goods_traded"],
        domesticSupplyOfServices: json["Domestic_Supply_of_services"] == null
            ? null
            : json["Domestic_Supply_of_services"],
        exportSalesOfGoodsManufactured:
            json["Export_Sales_of_goods_manufactured"] == null
                ? null
                : json["Export_Sales_of_goods_manufactured"],
        otherIncome: json["Other_Income"] == null ? null : json["Other_Income"],
        totalRevenue:
            json["Total_Revenue"] == null ? null : json["Total_Revenue"],
        costOfMaterialConsumed: json["Cost_of_Material_consumed"] == null
            ? null
            : json["Cost_of_Material_consumed"],
        purchaseOfStockInTrade: json["Purchase_of_stock_in_trade"] == null
            ? null
            : json["Purchase_of_stock_in_trade"],
        changeInFinishedGoodsInventory:
            json["Change_in_Finished_goods_inventory"] == null
                ? null
                : json["Change_in_Finished_goods_inventory"],
        employeeBenefitExpense: json["Employee_Benefit_Expense"] == null
            ? null
            : json["Employee_Benefit_Expense"],
        managerialRemuneration: json["Managerial_Remuneration"] == null
            ? null
            : json["Managerial_Remuneration"],
        paymentToAuditors: json["Payment_to_auditors"] == null
            ? null
            : json["Payment_to_auditors"],
        insuranceExpenses: json["Insurance_Expenses"] == null
            ? null
            : json["Insurance_Expenses"],
        powerFuel: json["Power_Fuel"] == null ? null : json["Power_Fuel"],
        financeCost: json["Finance_Cost"] == null ? null : json["Finance_Cost"],
        depreciationAndAmortisationExpense:
            json["Depreciation_and_Amortisation_expense"] == null
                ? null
                : json["Depreciation_and_Amortisation_expense"],
        otherExpenses:
            json["OTHER_EXPENSES"] == null ? null : json["OTHER_EXPENSES"],
        totalExpenses:
            json["TOTAL_EXPENSES"] == null ? null : json["TOTAL_EXPENSES"],
        ebitda: json["Ebitda"] == null ? null : json["Ebitda"],
        profitBeforeExceptionalAndExtraordinaryItemsAndTax:
            json["Profit_before_exceptional_and_extraordinary_items_and_tax"] ==
                    null
                ? null
                : json[
                    "Profit_before_exceptional_and_extraordinary_items_and_tax"],
        exceptionalItems: json["Exceptional_items"] == null
            ? null
            : json["Exceptional_items"],
        profitBeforeTax: json["Profit_before_tax"] == null
            ? null
            : json["Profit_before_tax"],
        currentTax: json["Current_Tax"] == null ? null : json["Current_Tax"],
        deferredTax: json["Deferred_Tax"] == null ? null : json["Deferred_Tax"],
        profitLoss: json["Profit_Loss"] == null ? null : json["Profit_Loss"],
        companyLink: json["CompanyLink"] == null ? null : json["CompanyLink"],
        docUrlId: json["DocUrlId"] == null ? null : json["DocUrlId"],
        natureOfReportStandaloneConsolidated:
            json["NatureOfReportStandaloneConsolidated"] == null
                ? null
                : json["NatureOfReportStandaloneConsolidated"],
        dilutedEpsAfterExtraordinaryItems:
            json["Diluted_EPS_after_extraordinary_items"] == null
                ? null
                : json["Diluted_EPS_after_extraordinary_items"].toDouble(),
      );
}

class RatioDetail {
  RatioDetail({
    this.totalRevenueC,
    this.profitLossC,
    this.netWorthC,
    this.cashBalanceC,
    this.totalAssetsC,
    this.outsiderLiabilityAl,
    this.natureOfReportStandaloneConsolidated,
    this.financialYear,
    this.fyEndDate,
    this.cin,
    this.companyId,
    this.ebitdaAl,
    this.totalEquityC,
    this.fyStartDate,
    this.revenueGrowthRc,
    this.ebitdaMarginRa,
    this.netProfitMarginRc,
    this.returnOnEquityRc,
    this.debtEquityRc,
    this.inventorySalesDaysRc,
    this.debtorsSalesDaysRc,
    this.payablesToSalesRc,
    this.cashConversionCycleDaysRc,
    this.salesToFixedAssetsRc,
    this.returnOnCapitalEmployedRa,
    this.equityMultiplierRc,
    this.currentRatioRa,
    this.liquidityRatioRa,
    this.interestCoverageRatioRa,
    this.netWorthRatioRa,
    this.rEarningPerShareRa,
    this.cashRatioRa,
    this.debtToEbitdaRa,
    this.totalLoansTotalAssetsRn,
    this.totalInvestmentsTotalAssetsRn,
    this.receivablesTotalAssetsRn,
    this.totalRevenueFromOperationsTotalFinancialAssetsRn,
    this.returnOnPartnersFundRl,
    this.debtPartnersFundRl,
  });

  int? totalRevenueC;
  int? profitLossC;
  int? netWorthC;
  int? cashBalanceC;
  int? totalAssetsC;
  int? outsiderLiabilityAl;
  String? natureOfReportStandaloneConsolidated;
  String? financialYear;
  DateTime? fyEndDate;
  String? cin;
  String? companyId;
  int? ebitdaAl;
  int? totalEquityC;
  DateTime? fyStartDate;
  double? revenueGrowthRc;
  double? ebitdaMarginRa;
  double? netProfitMarginRc;
  double? returnOnEquityRc;
  double? debtEquityRc;
  double? inventorySalesDaysRc;
  double? debtorsSalesDaysRc;
  double? payablesToSalesRc;
  double? cashConversionCycleDaysRc;
  double? salesToFixedAssetsRc;
  double? returnOnCapitalEmployedRa;
  double? equityMultiplierRc;
  double? currentRatioRa;
  double? liquidityRatioRa;
  double? interestCoverageRatioRa;
  double? netWorthRatioRa;
  int? rEarningPerShareRa;
  double? cashRatioRa;
  double? debtToEbitdaRa;
  int? totalLoansTotalAssetsRn;
  int? totalInvestmentsTotalAssetsRn;
  int? receivablesTotalAssetsRn;
  int? totalRevenueFromOperationsTotalFinancialAssetsRn;
  int? returnOnPartnersFundRl;
  int? debtPartnersFundRl;

  factory RatioDetail.fromJson(Map<String, dynamic> json) => RatioDetail(
        totalRevenueC:
            json["Total_Revenue_C"] == null ? null : json["Total_Revenue_C"],
        profitLossC:
            json["Profit_Loss_C"] == null ? null : json["Profit_Loss_C"],
        netWorthC: json["Net_Worth_C"] == null ? null : json["Net_Worth_C"],
        cashBalanceC:
            json["Cash_Balance_C"] == null ? null : json["Cash_Balance_C"],
        totalAssetsC:
            json["Total_Assets_C"] == null ? null : json["Total_Assets_C"],
        outsiderLiabilityAl: json["Outsider_Liability_AL"] == null
            ? null
            : json["Outsider_Liability_AL"],
        natureOfReportStandaloneConsolidated:
            json["NatureOfReportStandaloneConsolidated"] == null
                ? null
                : json["NatureOfReportStandaloneConsolidated"],
        financialYear:
            json["Financial_Year"] == null ? null : json["Financial_Year"],
        fyEndDate: json["FY_END_DATE"] == null
            ? null
            : DateTime.parse(json["FY_END_DATE"]),
        cin: json["cin"] == null ? null : json["cin"],
        companyId: json["Company_id"] == null ? null : json["Company_id"],
        ebitdaAl: json["Ebitda_AL"] == null ? null : json["Ebitda_AL"],
        totalEquityC:
            json["Total_Equity_C"] == null ? null : json["Total_Equity_C"],
        fyStartDate: json["FY_START_DATE"] == null
            ? null
            : DateTime.parse(json["FY_START_DATE"]),
        revenueGrowthRc: json["Revenue_Growth_RC"] == null
            ? null
            : json["Revenue_Growth_RC"].toDouble(),
        ebitdaMarginRa: json["Ebitda_Margin_RA"] == null
            ? null
            : json["Ebitda_Margin_RA"].toDouble(),
        netProfitMarginRc: json["Net_Profit_Margin_RC"] == null
            ? null
            : json["Net_Profit_Margin_RC"].toDouble(),
        returnOnEquityRc: json["Return_on_Equity_RC"] == null
            ? null
            : json["Return_on_Equity_RC"].toDouble(),
        debtEquityRc: json["Debt_Equity_RC"] == null
            ? null
            : json["Debt_Equity_RC"].toDouble(),
        inventorySalesDaysRc: json["Inventory_Sales_Days_RC"] == null
            ? null
            : json["Inventory_Sales_Days_RC"].toDouble(),
        debtorsSalesDaysRc: json["Debtors_Sales_Days_RC"] == null
            ? null
            : json["Debtors_Sales_Days_RC"].toDouble(),
        payablesToSalesRc: json["PAYABLES_TO_SALES_RC"] == null
            ? null
            : json["PAYABLES_TO_SALES_RC"].toDouble(),
        cashConversionCycleDaysRc: json["Cash_Conversion_Cycle_Days_RC"] == null
            ? null
            : json["Cash_Conversion_Cycle_Days_RC"].toDouble(),
        salesToFixedAssetsRc: json["SALES_TO_FIXED_ASSETS_RC"] == null
            ? null
            : json["SALES_TO_FIXED_ASSETS_RC"].toDouble(),
        returnOnCapitalEmployedRa: json["RETURN_ON_CAPITAL_EMPLOYED_RA"] == null
            ? null
            : json["RETURN_ON_CAPITAL_EMPLOYED_RA"].toDouble(),
        equityMultiplierRc: json["EQUITY_MULTIPLIER_RC"] == null
            ? null
            : json["EQUITY_MULTIPLIER_RC"].toDouble(),
        currentRatioRa: json["CURRENT_RATIO_RA"] == null
            ? null
            : json["CURRENT_RATIO_RA"].toDouble(),
        liquidityRatioRa: json["LIQUIDITY_RATIO_RA"] == null
            ? null
            : json["LIQUIDITY_RATIO_RA"].toDouble(),
        interestCoverageRatioRa: json["INTEREST_COVERAGE_RATIO_RA"] == null
            ? null
            : json["INTEREST_COVERAGE_RATIO_RA"].toDouble(),
        netWorthRatioRa: json["NET_WORTH_RATIO_RA"] == null
            ? null
            : json["NET_WORTH_RATIO_RA"].toDouble(),
        rEarningPerShareRa: json["R_EARNING_PER_SHARE_RA"] == null
            ? null
            : json["R_EARNING_PER_SHARE_RA"],
        cashRatioRa: json["CASH_RATIO_RA"] == null
            ? null
            : json["CASH_RATIO_RA"].toDouble(),
        debtToEbitdaRa: json["DEBT_TO_EBITDA_RA"] == null
            ? null
            : json["DEBT_TO_EBITDA_RA"].toDouble(),
        totalLoansTotalAssetsRn: json["Total_Loans_Total_Assets_RN"] == null
            ? null
            : json["Total_Loans_Total_Assets_RN"],
        totalInvestmentsTotalAssetsRn:
            json["Total_Investments_Total_Assets_RN"] == null
                ? null
                : json["Total_Investments_Total_Assets_RN"],
        receivablesTotalAssetsRn: json["Receivables_Total_Assets_RN"] == null
            ? null
            : json["Receivables_Total_Assets_RN"],
        totalRevenueFromOperationsTotalFinancialAssetsRn:
            json["Total_Revenue_from_Operations_Total_Financial_Assets_RN"] ==
                    null
                ? null
                : json[
                    "Total_Revenue_from_Operations_Total_Financial_Assets_RN"],
        returnOnPartnersFundRl: json["Return_on_Partners_Fund_RL"] == null
            ? null
            : json["Return_on_Partners_Fund_RL"],
        debtPartnersFundRl: json["Debt_Partners_Fund_RL"] == null
            ? null
            : json["Debt_Partners_Fund_RL"],
      );
}
