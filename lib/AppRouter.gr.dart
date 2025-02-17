// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i12;
import 'package:flutter_module/bloc/base/base_domain.dart' as _i10;
import 'package:flutter_module/bloc/DetailScreen.dart' as _i1;
import 'package:flutter_module/bloc/home/ui/PageBloc.dart' as _i4;
import 'package:flutter_module/bloc/home/ui/PageBloc3.dart' as _i5;
import 'package:flutter_module/MainScreen.dart' as _i2;
import 'package:flutter_module/model/BusinessItem.dart' as _i11;
import 'package:flutter_module/PageAccount.dart' as _i3;
import 'package:flutter_module/PageBusiness.dart' as _i6;
import 'package:flutter_module/PageListView.dart' as _i7;
import 'package:flutter_module/PageSchool.dart' as _i8;

/// generated route for
/// [_i1.DetailScreen]
class DetailScreenRoute extends _i9.PageRouteInfo<DetailScreenRouteArgs> {
  DetailScreenRoute({
    _i10.Key? key,
    required _i11.BusinessItem item,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         DetailScreenRoute.name,
         args: DetailScreenRouteArgs(key: key, item: item),
         initialChildren: children,
       );

  static const String name = 'DetailScreenRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DetailScreenRouteArgs>();
      return _i1.DetailScreen(key: args.key, item: args.item);
    },
  );
}

class DetailScreenRouteArgs {
  const DetailScreenRouteArgs({this.key, required this.item});

  final _i10.Key? key;

  final _i11.BusinessItem item;

  @override
  String toString() {
    return 'DetailScreenRouteArgs{key: $key, item: $item}';
  }
}

/// generated route for
/// [_i2.MainScreenPage]
class MainScreenPageRoute extends _i9.PageRouteInfo<void> {
  const MainScreenPageRoute({List<_i9.PageRouteInfo>? children})
    : super(MainScreenPageRoute.name, initialChildren: children);

  static const String name = 'MainScreenPageRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.MainScreenPage();
    },
  );
}

/// generated route for
/// [_i3.PageAccount]
class PageAccountRoute extends _i9.PageRouteInfo<PageAccountRouteArgs> {
  PageAccountRoute({
    required String title,
    _i12.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         PageAccountRoute.name,
         args: PageAccountRouteArgs(title: title, key: key),
         initialChildren: children,
       );

  static const String name = 'PageAccountRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PageAccountRouteArgs>();
      return _i3.PageAccount(args.title, key: args.key);
    },
  );
}

class PageAccountRouteArgs {
  const PageAccountRouteArgs({required this.title, this.key});

  final String title;

  final _i12.Key? key;

  @override
  String toString() {
    return 'PageAccountRouteArgs{title: $title, key: $key}';
  }
}

/// generated route for
/// [_i4.PageBloc]
class PageBlocRoute extends _i9.PageRouteInfo<PageBlocRouteArgs> {
  PageBlocRoute({
    required String title,
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         PageBlocRoute.name,
         args: PageBlocRouteArgs(title: title, key: key),
         initialChildren: children,
       );

  static const String name = 'PageBlocRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PageBlocRouteArgs>();
      return _i4.PageBloc(args.title, key: args.key);
    },
  );
}

class PageBlocRouteArgs {
  const PageBlocRouteArgs({required this.title, this.key});

  final String title;

  final _i10.Key? key;

  @override
  String toString() {
    return 'PageBlocRouteArgs{title: $title, key: $key}';
  }
}

/// generated route for
/// [_i5.PageBloc3]
class PageBloc3Route extends _i9.PageRouteInfo<PageBloc3RouteArgs> {
  PageBloc3Route({
    required String title,
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         PageBloc3Route.name,
         args: PageBloc3RouteArgs(title: title, key: key),
         initialChildren: children,
       );

  static const String name = 'PageBloc3Route';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PageBloc3RouteArgs>();
      return _i5.PageBloc3(args.title, key: args.key);
    },
  );
}

class PageBloc3RouteArgs {
  const PageBloc3RouteArgs({required this.title, this.key});

  final String title;

  final _i10.Key? key;

  @override
  String toString() {
    return 'PageBloc3RouteArgs{title: $title, key: $key}';
  }
}

/// generated route for
/// [_i6.PageBusiness]
class PageBusinessRoute extends _i9.PageRouteInfo<PageBusinessRouteArgs> {
  PageBusinessRoute({
    required String title,
    _i12.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         PageBusinessRoute.name,
         args: PageBusinessRouteArgs(title: title, key: key),
         initialChildren: children,
       );

  static const String name = 'PageBusinessRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PageBusinessRouteArgs>();
      return _i6.PageBusiness(args.title, key: args.key);
    },
  );
}

class PageBusinessRouteArgs {
  const PageBusinessRouteArgs({required this.title, this.key});

  final String title;

  final _i12.Key? key;

  @override
  String toString() {
    return 'PageBusinessRouteArgs{title: $title, key: $key}';
  }
}

/// generated route for
/// [_i7.PageListView]
class PageListViewRoute extends _i9.PageRouteInfo<PageListViewRouteArgs> {
  PageListViewRoute({
    required String title,
    _i12.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         PageListViewRoute.name,
         args: PageListViewRouteArgs(title: title, key: key),
         initialChildren: children,
       );

  static const String name = 'PageListViewRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PageListViewRouteArgs>();
      return _i7.PageListView(args.title, key: args.key);
    },
  );
}

class PageListViewRouteArgs {
  const PageListViewRouteArgs({required this.title, this.key});

  final String title;

  final _i12.Key? key;

  @override
  String toString() {
    return 'PageListViewRouteArgs{title: $title, key: $key}';
  }
}

/// generated route for
/// [_i8.PageSchool]
class PageSchoolRoute extends _i9.PageRouteInfo<PageSchoolRouteArgs> {
  PageSchoolRoute({
    required String title,
    _i12.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
         PageSchoolRoute.name,
         args: PageSchoolRouteArgs(title: title, key: key),
         initialChildren: children,
       );

  static const String name = 'PageSchoolRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PageSchoolRouteArgs>();
      return _i8.PageSchool(args.title, key: args.key);
    },
  );
}

class PageSchoolRouteArgs {
  const PageSchoolRouteArgs({required this.title, this.key});

  final String title;

  final _i12.Key? key;

  @override
  String toString() {
    return 'PageSchoolRouteArgs{title: $title, key: $key}';
  }
}
