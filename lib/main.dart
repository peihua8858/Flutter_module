import 'package:flutter/material.dart';
import 'package:flutter_module/main.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'AppRouter.dart';
import 'MainScreen.dart';

GetIt locator = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => locator.init();

@module
abstract class AppModule {}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  final AppRouter appRouter = AppRouter();
  print(">>>>>>>>>>>>>>>>>>>>>main");
  runApp(MainApp(appRouter: appRouter));
}

class MainApp extends StatelessWidget {
  final AppRouter appRouter;

  const MainApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    print(">>>>>>>>>>>>>>>>>>>>>main MyApp build");
    return MaterialApp.router(
      // routerConfig:
      // appRouter.config(navigatorObservers: () => [AppNavigatorObserver()]),
      routerDelegate: appRouter.delegate(
          navigatorObservers: () => [AppNavigatorObserver()]),
      routeInformationParser: appRouter.defaultRouteParser(),
      routeInformationProvider: appRouter.routeInfoProvider(),
      backButtonDispatcher: RootBackButtonDispatcher(),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class AppNavigatorObserver extends NavigatorObserver {
  @override
  void didPop(Route route, Route? previousRoute) {
    print(">>>>>>>>>>>>>>>>>>>>>main didPop");
    super.didPop(route, previousRoute);
  }

  @override
  void didPush(Route route, Route? previousRoute) {
    print(">>>>>>>>>>>>>>>>>>>>>main didPush");
    super.didPush(route, previousRoute);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    print(">>>>>>>>>>>>>>>>>>>>>main didRemove");
    super.didRemove(route, previousRoute);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    print(">>>>>>>>>>>>>>>>>>>>>main didReplace");
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
  }

  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    print(">>>>>>>>>>>>>>>>>>>>>main didStartUserGesture");
    super.didStartUserGesture(route, previousRoute);
  }

  @override
  void didStopUserGesture() {
    print(">>>>>>>>>>>>>>>>>>>>>main didStopUserGesture");
    super.didStopUserGesture();
  }

  @override
  void didUpdateRoute(Route route) {
    print(">>>>>>>>>>>>>>>>>>>>>main didUpdateRoute");
  }
}
