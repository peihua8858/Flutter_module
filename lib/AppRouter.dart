import 'package:auto_route/auto_route.dart';
import 'package:flutter_module/MainScreen.dart';

import 'AppRouter.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
            page: MainScreenPageRoute.page,
            path: '/',
            // initial: true,
            children: [
              AutoRoute(page: PageBlocRoute.page, path: 'pageBloc'),
              // AutoRoute(page: PageBloc2Route.page, path: 'pageBloc2'),
              AutoRoute(page: PageBloc3Route.page, path: 'pageBloc3'),
              AutoRoute(page: PageListViewRoute.page, path: 'pageListView'),
              AutoRoute(page: PageBusinessRoute.page, path: 'pageBusiness'),
              AutoRoute(page: PageSchoolRoute.page, path: 'pageSchool'),
              AutoRoute(page: PageAccountRoute.page, path: 'pageAccount'),
            ]),

        AutoRoute(page: DetailScreenRoute.page, path: '/detail'),

        // bug  https://github.com/Milad-Akarie/auto_route_library/issues/2119
        // 如不加这行,则会报错"Can not resolve initial route" on some users Android devices
        RedirectRoute(path: "*", redirectTo: "/")
      ];

  @override
  List<AutoRouteGuard> get guards => [
        // optionally add root guards here
      ];
}
