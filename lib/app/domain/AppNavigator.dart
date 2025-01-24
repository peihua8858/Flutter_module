import 'package:flutter_module/app/domain/domain.dart';

abstract class AppNavigator{
  Future<T?> push<T extends Object?>(AppRouteInfo appRouteInfo);

  Future<bool> pop<T extends Object?>({T? result, bool useRootNavigator = false});

  int get currentBottomTab;

  void popUntilRootOfCurrentBottomTab();

  void navigateToBottomTab(int index, {bool notify = true}) ;
}