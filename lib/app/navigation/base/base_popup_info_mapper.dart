// import 'package:flutter/services.dart';
// import 'package:flutter_module/app/domain/domain.dart';
// import 'package:injectable/injectable.dart';
//
//
// abstract class BaseRouteInfoMapper {
//   AppRouteInfo map(AppRouteInfo appRouteInfo);
// }
//
// @LazySingleton(as: BaseRouteInfoMapper)
// class AppRouteInfoMapper extends BaseRouteInfoMapper {
//
//   AppRouteInfo map(AppRouteInfo appRouteInfo) {
//     return appRouteInfo.when(
//         login: () => const LoginRoute(),
//   }
// }