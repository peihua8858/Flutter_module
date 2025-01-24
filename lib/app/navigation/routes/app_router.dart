// import 'package:auto_route/auto_route.dart';
// import 'package:injectable/injectable.dart';
//
// part 'app_router.gr.dart';
//
//
// @AutoRouterConfig(
//   replaceInRouteName: 'Page,Route',
// )
// @LazySingleton()
// class AppRouter extends _$AppRouter {
//   @override
//   RouteType get defaultRouteType => const RouteType.adaptive();
//
//   @override
//   List<AutoRoute> get routes => [
//     AutoRoute(page: LoginRoute.page),
//     AutoRoute(page: MainRoute.page, initial: true, children: [
//       AutoRoute(
//         page: HomeTab.page,
//         maintainState: true,
//         children: [
//           AutoRoute(page: HomeRoute.page, initial: true),
//         ],
//       ),
//       AutoRoute(
//         page: OrderTab.page,
//         maintainState: true,
//         children: [
//           AutoRoute(page: OrderRoute.page, initial: true),
//         ],
//       ),
//       AutoRoute(
//         page: MyPageTab.page,
//         maintainState: true,
//         children: [
//           AutoRoute(page: MyPageRoute.page, initial: true),
//         ],
//       ),
//     ]),
//   ];
// }
//
// @RoutePage(name: 'HomeTab')
// class HomeTabPage extends AutoRouter {
//   const HomeTabPage({super.key});
// }
//
// @RoutePage(name: 'OrderTab')
// class OrderTabPage extends AutoRouter {
//   const OrderTabPage({super.key});
// }
//
// @RoutePage(name: 'MyPageTab')
// class MyPageTabPage extends AutoRouter {
//   const MyPageTabPage({super.key});
// }