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

  late final _$getCompanyDetailsAsyncAction =
      AsyncAction('_CompanyDetailsStore.getCompanyDetails', context: context);

  @override
  Future<String> getCompanyDetails() {
    return _$getCompanyDetailsAsyncAction.run(() => super.getCompanyDetails());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isLogin: ${isLogin}
    ''';
  }
}
