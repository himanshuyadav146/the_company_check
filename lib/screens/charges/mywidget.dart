import 'package:flutter/material.dart';
import 'package:the_company_check/theme/app_theme.dart';
import 'package:the_company_check/utils/app_utils.dart';

class MyRow extends StatefulWidget {
   MyRow({
    required this.mykey,
    required this.myValue,
    required this.isRatio,
    required this.isBalanceSheet,
    required this.isProfitAndLoss,
     required this.percentage,
     required this.isProfitNLossLLP,
     required this.isProfitNLossAOCNBFC,
     required this.isProfitNLossAoc,
     required this.isBalanceSheetLLP,
     required this.isBalanceSheetAOCNBFC,
     required this.isBalanceSheetAoc,
     required this.isRatioDetails,
    super.key,
  });

  final String mykey;
  final String myValue;
  bool isProfitAndLoss = true;
  bool isBalanceSheet = false;
  bool isRatio = false;
   bool isProfitNLossLLP = false;
   bool isProfitNLossAOCNBFC = false;
   bool isProfitNLossAoc = false;
   bool isBalanceSheetLLP = false;
   bool isBalanceSheetAOCNBFC = false;
   bool isBalanceSheetAoc = false;
   bool isRatioDetails = false;

  final String percentage;

  @override
  State<MyRow> createState() => _MyRowState();
}

class _MyRowState extends State<MyRow> {
  String getBalanceSheet() {
    switch (widget.mykey) {
      case 'Equity_Share_capital':
        return 'Share Capital';
      case 'Reserves_and_surplus':
        return 'Reserves And Surplus';
      case 'Money_received_against_share_warrants':
        return 'Money Against Warrent';
      case 'Other_equity':
        return 'Other Equity';
      case 'Total_Equity':
        return 'Total Equity';
      case 'Long_term_borrowings':
        return 'Long Term Borrowings';
      case 'Deferred_tax_liabilities_net':
        return 'Deferred Tax Liabilities (NET)';
      case 'Other_long_term_liabilities':
        return 'Other Long Term Liabilities';
      case 'Long_term_provisions':
        return 'Long Term Provisions';
      case 'Total_Non_Current_Liabilities':
        return 'Total Non Current Liabilities';
      case 'Short_term_borrowings':
        return 'Short Term Borrowings';
      case 'Trade_payables':
        return 'Trade Payables';
      case 'Other_current_liabilities':
        return 'Other Current Liabilites';
      case 'Short_term_provisions':
        return 'Short Term Provisions';
      case 'Total_Current_Liabilites':
        return 'Total Current Liabilites';
      case 'Total_Equities_and_Liabilites':
        return 'Total Equities & Liabilites';
      case 'Tangible_assets':
        return 'Tangible Assests';
      case 'Intangible_assets':
        return 'Intangible Assets';
      case 'Capital_workinprogress':
        return 'Capital Work-In-Progress';
      case 'Intangible_assets_under_development':
        return 'Intangible Assets Under Development';
      case 'Noncurrent_Investments':
        return 'Non-Current Investment';
      case 'Deferred_tax_assets_net':
        return 'Deferred Tax Assets(NET)';
      case 'Long_term_loans_and_advances':
        return 'Long Term Loans And Advances';
      case 'Other_noncurrent_assets':
        return 'Other Non Current Assets';
      case 'Total_Non_Current_Assets':
        return 'Total Non Current Assets';
      case 'Current_Investment':
        return 'Current Investment';
      case 'Inventories':
        return 'Inventoris';
      case 'Trade_receivables':
        return 'Trade Receivables';
      case 'Cash_and_bank_balance':
        return 'Cash And Bank Balance';
      case 'Short_term_loans_and_advances':
        return 'Short Term Loans And Advances';
      case 'Other_current_assets':
        return 'Other Current Assets';
      case 'Total_Current_Asset':
        return 'Total Current Assets';
      case 'Total_Asset':
        return 'Total Assets';
      default:
    }
    return "";
  }

  String getBalanceSheetLLP() {
    switch (widget.mykey) {
      case 'Contribution_received':
        return 'CONTRIBUTION RECEIVED';
      case 'Reserves_and_surplus':
        return 'RESERVES & SURPLUS';
      case 'Secured_loans':
        return 'SECURED LOANS';
      case 'Unsecured_loans':
        return 'UNSECURED LOANS';
      case 'Short_term_borrowings':
        return 'SHORT TERM BORROWING';
      case 'Creditors_trade_payables_Advance_from_customers':
        return 'CREDITORS/TRADE PAYABLES';
      case 'Other_liabilities':
        return 'OTHER LIABILITIES';
      case 'for_taxation':
        return 'PROVISION FOR TAXATION';
      case 'for_contingencies':
        return 'PROVISION FOR CONTINGENCIES';
      case 'for_insurance':
        return 'PROVISION FOR INSURANCE';
      case 'Other_provisions':
        return 'OTHER PROVISIONS';
      case 'Total_Liability':
        return 'TOTAL LIABILITY';
      case 'Gross_Fixed_assets':
        return 'GROSS FIXED ASSETS';
      case 'Less_depreciation_and_amortization':
        return 'DEPRECIATION & AMORTIZATION';
      case 'Net_fixed_assets':
        return 'NET FIXED ASSETS';
      case 'Investments':
        return 'INVESTMENTS';
      case 'Loans_and_advances':
        return 'LOANS & ADVANCES';
      case 'Inventories':
        return 'INVENTORIES';
      case 'Debtors_trade_receivables':
        return 'DEBTORS / TRADE RECEIVABLES';
      case 'Cash_and_cash_equivalents':
        return 'CASH & CASH EQUIVALENTS';
      case 'Other_assets':
        return 'OTHER ASSETS';
      case 'Total_Asset':
        return 'TOTAL ASSET';
      default:
    }
    return "";
  }

  String getBalanceSheetAOCNBFC() {
    switch (widget.mykey) {
      case 'Share_Capital':
        return 'Share Capital';
      case 'Other_Equity':
        return 'Other Equity';
      case 'Total_Equity':
        return 'Total Equity';
      case 'Derivative_Financial_Instruments':
        return 'Derivative Financial Instruments';
      case 'Payables':
        return 'Payables';
      case 'Debt_Securities':
        return 'Debt Securities';
      case 'Borrowings':
        return 'Borrowings';
      case 'Deposits':
        return 'Deposits';
      case 'Subordinated_Liabilities':
        return 'Subordinated Liabilities';
      case 'Other_Financial_Liabilities':
        return 'Other Financial Liabilities';
      case 'Total_Financial_Liabilities':
        return 'Total Financial Liabilities';
      case 'Net_Current_Tax_Liabilities':
        return 'Net Current Tax Liabilities';
      case 'Provisions':
        return 'Provisions';
      case 'Net_Deferred_Tax_Liabilities':
        return 'Net Deferred Tax Liabilities';
      case 'Other_Non_financial_Liabilities':
        return 'Other Non-Financial Liabilities';
      case 'Total_Non_financial_Liabilities':
        return 'Total Non-Financial Liabilities';
      case 'Total_Equity_and_Liabilities':
        return 'Total Equity & Liabilites';
      case 'Loans':
        return 'Loans';
      case 'Investments':
        return 'Investments';
      case 'Derivative_Financial_Instruments':
        return 'Derivative Financial Instruments';
      case 'Receivables':
        return 'Recevables';
      case 'Cash_and_Bank_Balance':
        return 'Cash And Bank Balance';
      case 'Other_Financial_Assets':
        return 'Other Financial Assests';
      case 'Total_Financial_Assets':
        return 'Total Financial Assests';
      case 'Tangible_Assets':
        return 'Tangible Assests';
      case 'Intangible_Assets':
        return 'Intangible Assets';
      case 'Capital_Work_in_progress':
        return 'Capital Work-In-Progress';
      case 'Inventories':
        return 'Inventoris';
      case 'Net_Current_Tax_Assets':
        return 'Net Current Tax Assests';
      case 'Net_Deferred_Tax_Assets':
        return 'Net Defferd Tax Assests';
      case 'Other_Non_financial_Assets':
        return 'Other Non-Financial Assests';
      case 'Total_Non_financial_Assets':
        return 'Total Non-Financial Assests';
      case 'Total_Assets':
        return 'Total Assets';
      default:
    }
    return "";
  }




  String getProfitAndLossName(){
    switch (widget.mykey) {
      case 'Other_Income':
        return 'Other Income';
      // case 'Total_Revenue':   // Need to be check for this id
      //   return 'Revenue From Operations';
      case 'Total_Revenue':
        return 'Total Revenue';
      case 'Cost_of_Material_consumed':
        return 'Cost Of Material Consumed';
      case 'Change_in_Finished_goods_inventory':
        return 'Finished Goods';
      case 'Change_in_work_in_progress_inventory':
        return 'Work-In-Progress';
      case 'Purchase_of_stock_in_trade':
        return 'Stock In Trade';
      case 'Employee_Benefit_Expense':
        return 'Employee Benefit Expense';
      case 'Managerial_Remuneration':
        return 'Managerial Remuneration';
      case 'Payment_to_auditors':
        return 'Payment To Audtiors';
      case 'Insurance_Expenses':
        return 'Insurance Expense';
      case 'Power_Fuel':
        return 'Power And Fuel';
      case 'Finance_Cost':
        return 'Finance Cost';
      case 'Depreciation_and_Amortisation_expense':
        return 'Depreciation And Amortisation';
      case 'OTHER_EXPENSES':
        return 'Other Expenses';
      case 'TOTAL_EXPENSES':
        return 'Total Expense';
      case 'Ebitda':
        return 'Ebitda';
      case 'Exceptional_items':
        return 'Exceptional Items';
      case 'Profit_before_exceptional_and_extraordinary_items_and_tax':
        return 'Profit Before Extraordinary & Exceptional';
      case 'Extraordinary_items':
        return 'Extraordinary Itmes';
      case 'Profit_before_tax':
        return 'Profit Before Tax';
      case 'Current_Tax':
        return 'Current Tax';
      case 'Deferred_Tax':
        return 'Deferred Tax';
      case 'ProfitLoss_from_discontinuing_operations':
        return 'Profit From Discountinuing Operations';
      case 'Tax_expense_of_discontinuing_operations':
        return 'Tax Expense Of Discountinuing Operations';
      case 'Profit_Loss':
        return 'Profit/ (Loss)';
      default:
        return '';
    }
  }

  String getProfitAndLossLLP(){
    switch (widget.mykey) {
      case 'Gross_turnover':
        return 'GROSS TURNOVER';
      case 'Other_income':   // Need to be check for this id
        return 'OTHER INCOME';
      case 'Total_Income':
        return 'TOTAL INCOME';
      case 'Raw_material_consumed':
        return 'COST OF MATERIAL CONSUMED';
      case 'Purchases_made_for_re_sale':
        return 'STOCK IN TRADE';
      case 'Increase_decrease_in_stocks':
        return 'CHANGES IN INVENTORY/FINISHED GOODS';
      case 'Personnel_Expenses':
        return 'EMPLOYEE BENEFIT EXPENSE';
      case 'Total_Amount_Of_Expenses':
        return 'OTHER EXPENSES';
      case 'Total_expenditure':
        return 'TOTAL EXPENSE';
      case 'EBITDA':
        return 'EBITDA';
      case 'Depreciation_and_amortization':
        return 'DEPRECIATION AND AMORTISATION';
      case 'Profit_Before_Interest_And_Tax':
        return 'PROFIT BEFORE INTEREST & TAX';
      case 'Interest':
        return 'FINANCE COST';
      case 'Net_Profit_Loss_before_taxes':
        return 'PROFIT BEFORE TAX';
      case 'Provision_for_Tax':
        return 'CURRENT TAX';
      case 'Profit_After_Tax':
        return 'PROFIT AFTER TAX';
      case 'Profit_After_Tax':
        return 'PROFIT/ (LOSS)';
      default:
        return '';
    }
  }

  String getProfitAndLossAOCNBFC(){
    switch (widget.mykey) {
      case 'Other_Income':
        return 'Interst Income';
      case 'Dividend_Income':   // Need to be check for this id
        return 'Dividend Income';
      case 'Other_Operating_Income':
        return 'Other Operating Income';
      case 'Total_Revenue_from_Operations':
        return 'Total Revenue From Operations';
      case 'Other_Income':
        return 'Other Income';
      case 'Total_Income':
        return 'Total Income';
      case 'Finance_Costs':
        return 'Finance Costs';
      case 'Cost_of_Materials_Consumed':
        return 'Cost Of Material Consumed';
      case 'Purchases_of_Stock_in_trade':
        return 'Purchases Of Stock-In-Trade';
      case 'Changes_In_Inventories':
        return 'Change In Inventories';
      case 'Employee_Benefits_Expenses':
        return 'Employee Benefit Expense';
      case 'Ebitda':
        return 'Ebitda';
      case 'Depreciation_and_Amortization':
        return 'Depreciation And Amortisation';
      case 'Other_Expenses':
        return 'Other Expenses';
      case 'Total_Expenses':
        return 'Total Expense';
      case 'Profit_Before_Exceptional_Items':
        return 'Profit Before Extraordinary & Exceptional Items';
      case 'Exceptional_Items':
        return 'Exceptional Items';
      case 'Profit_Before_Tax':
        return 'Profit Before Tax';
      case 'Tax_Expense':
        return 'Tax Expenses';
      case 'Profit_from_Continuing_Operations':
        return 'Profit From Continuing Operations';
      case 'Profit_from_Discontinued_Operations':
        return 'Profit From Discontinued Operations';
      case 'Profit_for_the_Period':
        return 'Profit For the Period';
      default:
        return '';
    }
  }

  String getRatioStandalone(){
    switch (widget.mykey) {
      case 'CURRENT_RATIO_RA':
        return 'CURRENT RATIO';
      case 'LIQUIDITY_RATIO_RA':
        return 'QUICK RATIO';
      case 'Debt_Equity_RC':
        return 'DEBT TO EQUITY';
      case 'Net_Profit_Margin_RC':
        return 'NET PROFIT MARGIN';
      case 'RETURN_ON_CAPITAL_EMPLOYED_RA':
        return 'RETURN ON CAPITAL EMPLOYED';
      case 'Ebitda_Margin_RA':
        return 'EBITDA MARGIN';
      case 'Return_on_Equity_RC':
        return 'RETURN ON EQUITY';
      case 'CASH_RATIO_RA':
        return 'CASH RATIO';
      case 'SALES_TO_FIXED_ASSETS_RC':
        return 'SALES TO FIXED ASSET';
      case 'Receivables_Total_Assets_RN':
        return 'RECEIVABLES TO TOTAL ASSET';
      case 'Revenue_Growth_RC':
        return 'REVENUE GROWTH';
      case 'NET_WORTH_RATIO_RA':
        return 'NET WORTH MARGIN';
      case 'Inventory_Sales_Days_RC':
        return 'INVENTORY TO SALES';
      case 'Debtors_Sales_Days_RC':
        return 'DEBTOR TO SALES DAYS';
      case 'PAYABLES_TO_SALES_RC':
        return 'PAYABLE TO SALES';
      case 'Cash_Conversion_Cycle_Days_RC':
        return 'CASH CONVERSION CYCLE (DAYS)';
      case 'EQUITY_MULTIPLIER_RC':
        return 'EQUITY MULTIPLIER';
      case 'INTEREST_COVERAGE_RATIO_RA':
        return 'INTEREST COVERAGE RATIO';
      case 'DEBT_TO_EBITDA_RA':
        return 'DEBT TO EBITDA';
      case 'Total_Loans_Total_Assets_RN':
        return 'TOTAL LOANS TO TOTAL ASSETS';
      case 'Total_Investments_Total_Assets_RN':
        return 'TOTAL INVESTMENTS TO TOTAL ASSETS';
      case 'Total_Revenue_from_Operations_Total_Financial_Assets_RN':
        return 'REVENUE TO TOTAL FINANCIAL ASSETS';
      default:
        return '';
    }
  }

  String getRatioLLP(){
    switch (widget.mykey) {
      case 'Debt_Partners_Fund_RL':
        return 'DEBT TO PARTNERS FUND';
      case 'Net_Profit_Margin_RC':
        return 'NET PROFIT MARGIN';
      case 'Ebitda_Margin_RA':
        return 'EBITDA MARGIN';
      case 'Return_on_Partners_Fund_RL':
        return 'RETURN ON PARTNERS FUND';
      case 'SALES_TO_FIXED_ASSETS_RC':
        return 'SALES TO FIXED ASSET';
      case 'Receivables_Total_Assets_RN':
        return 'RECEIVABLES TO TOTAL ASSET';
      case 'Revenue_Growth_RC':
        return 'REVENUE GROWTH';
      case 'NET_WORTH_RATIO_RA':
        return 'NET WORTH MARGIN';
      case 'Inventory_Sales_Days_RC':
        return 'INVENTORY TO SALES';
      case 'Debtors_Sales_Days_RC':
        return 'DEBTOR TO SALES';
      case 'PAYABLES_TO_SALES_RC':
        return 'PAYABLE TO SALES';
      case 'Cash_Conversion_Cycle_Days_RC':
        return 'CASH CONVERSION CYCLE (DAYS)';
      case 'INTEREST_COVERAGE_RATIO_RA':
        return 'INTEREST COVERAGE RATIO';
      case 'DEBT_TO_EBITDA_RA':
        return 'DEBT TO EBITDA';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    var txt ="";
    var isVisible = true;
    if(widget.isProfitAndLoss){
      if(widget.isProfitNLossLLP){
        txt = getProfitAndLossLLP();
      }else if(widget.isProfitNLossAOCNBFC){
        txt = getProfitAndLossAOCNBFC();
      }else if(widget.isProfitNLossAoc){
        txt = getProfitAndLossName();
      }
    }else if(widget.isBalanceSheet){
      if(widget.isBalanceSheetLLP){
        txt = getBalanceSheetLLP();
      }else if(widget.isBalanceSheetAOCNBFC){
        txt = getBalanceSheetAOCNBFC();
      }else if(widget.isBalanceSheetAoc){
        txt = getBalanceSheet();
      }
    }else if(widget.isRatio){
      txt =getRatioStandalone();
    }

    return txt.isEmpty || widget.myValue.isEmpty ? Container() : Padding(
      padding: const EdgeInsets.only(top: 9.0,bottom: 9.0),
      child: Row(
          children: [
            SizedBox(
              width: 150,
              child: Text(txt,
                style: TextStyle(
                    color: AppTheme.lightGray138_1,
                    fontFamily: 'RobotoMedium',
                    fontSize: 16,
                    letterSpacing:
                    0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1.5 /*PERCENT not supported*/
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 100,
              // child: Text(AppUtils.getFormatedAmountInCR(double.parse(widget.myValue), 2) ,
              child: Text(("${widget.myValue}"),
              style: TextStyle(
                  color: AppTheme.lightGray138_1,
                  fontFamily: 'RobotoMedium',
                  fontSize: 16,
                  letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5 /*PERCENT not supported*/
              ),
              ),
            ),
            const Spacer(),
            SizedBox(
              width: 60,
              child: Text("${widget.percentage}",
              style: TextStyle(
                  color: AppUtils.getColorCodeForPercentage(widget.percentage),
                  fontFamily: 'RobotoMedium',
                  fontSize: 16,
                  letterSpacing:
                  0 /*percentages not used in flutter. defaulting to zero*/,
                  fontWeight: FontWeight.normal,
                  height: 1.5 /*PERCENT not supported*/
              ),
              ),
            ),
          ],
        ),
    );
  }
}
