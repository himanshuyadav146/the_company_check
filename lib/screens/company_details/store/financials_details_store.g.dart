// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'financials_details_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FinancialsDetailsStore on _FinancialsDetailsStore, Store {
  late final _$isLoadingAtom =
      Atom(name: '_FinancialsDetailsStore.isLoading', context: context);

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

  late final _$responseAtom =
      Atom(name: '_FinancialsDetailsStore.response', context: context);

  @override
  FinancialsModel get response {
    _$responseAtom.reportRead();
    return super.response;
  }

  @override
  set response(FinancialsModel value) {
    _$responseAtom.reportWrite(value, super.response, () {
      super.response = value;
    });
  }

  late final _$getFinancialsDetailsAsyncAction = AsyncAction(
      '_FinancialsDetailsStore.getFinancialsDetails',
      context: context);

  @override
  Future<String> getFinancialsDetails(String str) {
    return _$getFinancialsDetailsAsyncAction
        .run(() => super.getFinancialsDetails(str));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
response: ${response}
    ''';
  }
}
