// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_module/app/domain/domain.dart';
// import 'package:flutter_module/utils/LogMixin.dart';
// import 'package:injectable/injectable.dart';
//
//
// @LazySingleton(as: AppNavigator)
// class AppNavigatorImpl extends AppNavigator with LogMixin {
//   AppNavigatorImpl(
//       this._appRouter,
//       // this._appRouteInfoMapper,
//       );
//
//   final tabRoutes = const [
//     OrderTab(),
//     HomeTab(),
//     MyPageTab(),
//   ];
//
//   TabsRouter? tabsRouter;
//
//   final AppRouter _appRouter;
//   // final BaseRouteInfoMapper _appRouteInfoMapper;
//
//   // StackRouter? get _currentTabRouter => tabsRouter?.stackRouterOfIndex(currentBottomTab);
//   // StackRouter get _currentTabRouterOrRootRouter => _currentTabRouter ?? _appRouter;
//
//   // @override
//   // Future<T?> push<T extends Object?>(AppRouteInfo appRouteInfo) {
//   //   // return _appRouter.push<T>(_appRouteInfoMapper.map(appRouteInfo));
//   // }
//
//   // @override
//   // Future<bool> pop<T extends Object?>({T? result, bool useRootNavigator = false}) {
//   //   return useRootNavigator
//   //       ? _appRouter.pop<T>(result)
//   //       : _currentTabRouterOrRootRouter.pop<T>(result);
//   // }
//
//   @override
//   int get currentBottomTab {
//     if (tabsRouter == null) {
//       throw 'Not found any TabRouter';
//     }
//
//     return tabsRouter?.activeIndex ?? 0;
//   }
//
//   @override
//   void popUntilRootOfCurrentBottomTab() {
//     // if (tabsRouter == null) {
//     //   throw 'Not found any TabRouter';
//     // }
//     //
//     // if (_currentTabRouter?.canPop() == true) {
//     //   _currentTabRouter?.popUntilRoot();
//     // }
//   }
//
//   @override
//   void navigateToBottomTab(int index, {bool notify = true}) {
//     if (tabsRouter == null) {
//       throw 'Not found any TabRouter';
//     }
//     tabsRouter?.setActiveIndex(index, notify: notify);
//   }
//
// // 还有其它实现，这里先省略...
// }