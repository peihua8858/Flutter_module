import 'package:flutter_module/bloc/base/BaseBlocEvent.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'HomeEvent.freezed.dart';

abstract class HomeEvent extends BaseBlocEvent {
  HomeEvent();
}

@freezed
class HomePageInitiated extends HomeEvent with _$HomePageInitiated {
  const factory HomePageInitiated() = _HomePageInitiated;
}

@freezed
class HomePageRefreshed extends HomeEvent with _$HomePageRefreshed {
  const factory HomePageRefreshed() = _HomePageRefreshed;
}

@freezed
class HomePageLoadMore extends HomeEvent with _$HomePageLoadMore {
  const factory HomePageLoadMore() = _HomePageLoadMore;
}
