import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_module/bloc/base/BaseBlocState.dart';
import 'package:flutter_module/model/BusinessItem.dart';
part 'HomeState.freezed.dart';
@freezed
class HomeState extends BaseBlocState with _$HomeState {
  factory HomeState({
    @Default([]) List<BusinessItem> playList,
    @Default(false) bool hasMore,
    @Default(null) Exception? error,
  }) = _HomeState;
}
