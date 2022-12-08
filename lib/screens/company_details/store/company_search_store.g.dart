// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_search_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CompanySearchStore on _CompanySearchStore, Store {
  late final _$isLoadingAtom =
      Atom(name: '_CompanySearchStore.isLoading', context: context);

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
      Atom(name: '_CompanySearchStore.isLogin', context: context);

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
      Atom(name: '_CompanySearchStore.response', context: context);

  @override
  SearchListModel get response {
    _$responseAtom.reportRead();
    return super.response;
  }

  @override
  set response(SearchListModel value) {
    _$responseAtom.reportWrite(value, super.response, () {
      super.response = value;
    });
  }

  late final _$getCompanySearchAsyncAction =
      AsyncAction('_CompanySearchStore.getCompanySearch', context: context);

  @override
  Future<String> getCompanySearch(String str) {
    return _$getCompanySearchAsyncAction.run(() => super.getCompanySearch(str));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isLogin: ${isLogin},
response: ${response}
    ''';
  }
}
