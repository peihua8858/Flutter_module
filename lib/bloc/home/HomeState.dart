
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_module/bloc/base/BaseBlocState.dart';

part 'home_state.freezed.dart';
class HomeState extends BaseBlocState with _$HomeState {
  factory HomeState({
    @Default([]) List<PlayListItemData> playList,
  }) = _HomeState;
}