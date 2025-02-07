import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_module/bloc/base/BaseBlocEvent.dart';
import 'package:flutter_module/bloc/base/BaseBlocState.dart';
import 'package:flutter_module/app/domain/domain.dart';
import 'package:flutter_module/utils/LogMixin.dart';

abstract class BaseBloc<E extends BaseBlocEvent, S extends BaseBlocState>
    extends BaseBlocDelegate<E, S> with LogMixin {
  BaseBloc(S initialState) : super(initialState);

  //用于等待刷新完成
  Completer<void> _refreshCompleter = Completer<void>();

  Completer<void> get refreshCompleter => _refreshCompleter;

  Future waiteRefresh() async {
    _refreshCompleter = Completer<void>();
    await refreshCompleter.future;
  }

  onRefreshCompleted() {
    refreshCompleter.complete();
  }

  onRefreshError(error) {
    refreshCompleter.completeError(error);
  }
}

abstract class BaseBlocDelegate<E extends BaseBlocEvent,
    S extends BaseBlocState> extends Bloc<E, S> {
  BaseBlocDelegate(S initialState) : super(initialState);

  // 导航器对象
  late final AppNavigator navigator;
}
