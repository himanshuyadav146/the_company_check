import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({
    required this.mykey,
    required this.myValue,
    super.key,
  });

  final String mykey;
  final String myValue;

  String getName() {
    switch (mykey) {
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
    return mykey;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 180,
          child: Text(getName()),
        ),
        const Spacer(),
        SizedBox(
          width: 120,
          child: Text(myValue),
        ),
      ],
    );
  }
}
