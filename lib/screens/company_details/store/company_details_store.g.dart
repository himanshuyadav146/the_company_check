// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_details_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CompanyDetailsStore on _CompanyDetailsStore, Store {
  late final _$isLoadingAtom =
      Atom(name: '_CompanyDetailsStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$isLoginAtom =
      Atom(name: '_CompanyDetailsStore.isLogin', context: context);

  @override
  bool get isLogin {
    _$isLoginAtom.reportRead();
    return super.isLogin;
  }

  @override
  set isLogin(bool value) {
    _$isLoginAtom.reportWrite(value, super.isLogin, () {
      super.isLogin = value;
    });
  }

  late final _$responseAtom =
      Atom(name: '_CompanyDetailsStore.response', context: context);

  @override
  CompanyDetailsModel get response {
    _$responseAtom.reportRead();
    return super.response;
  }

  @override
  set response(CompanyDetailsModel value) {
    _$responseAtom.reportWrite(value, super.response, () {
      super.response = value;
    });
  }

  late final _$directorsListAtom =
      Atom(name: '_CompanyDetailsStore.directorsList', context: context);

  @override
  List<TDirector>? get directorsList {
    _$directorsListAtom.reportRead();
    return super.directorsList;
  }

  @override
  set directorsList(List<TDirector>? value) {
    _$directorsListAtom.reportWrite(value, super.directorsList, () {
      super.directorsList = value;
    });
  }

  late final _$companyDataAtom =
      Atom(name: '_CompanyDetailsStore.companyData', context: context);

  @override
  Datum? get companyData {
    _$companyDataAtom.reportRead();
    return super.companyData;
  }

  @override
  set companyData(Datum? value) {
    _$companyDataAtom.reportWrite(value, super.companyData, () {
      super.companyData = value;
    });
  }

  late final _$getCompanyDetailsAsyncAction =
      AsyncAction('_CompanyDetailsStore.getCompanyDetails', context: context);

  @override
  Future<String> getCompanyDetails(String str) {
    return _$getCompanyDetailsAsyncAction
        .run(() => super.getCompanyDetails(str));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isLogin: ${isLogin},
response: ${response},
directorsList: ${directorsList},
companyData: ${companyData}
    ''';
  }
}
