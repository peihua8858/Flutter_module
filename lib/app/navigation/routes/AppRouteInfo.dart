import 'package:freezed_annotation/freezed_annotation.dart';
part 'AppRouteInfo.freezed.dart';

@freezed
class AppRouteInfo with _$AppRouteInfo {
  const factory AppRouteInfo.login() = _Login;
}