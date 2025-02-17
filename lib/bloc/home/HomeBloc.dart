import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_module/bloc/base/BaseBloc.dart';
import 'package:flutter_module/bloc/home/HomeEvent.dart';
import 'package:flutter_module/bloc/home/HomeState.dart';
import 'package:flutter_module/repository/Repository.dart';
import 'package:flutter_module/model/BusinessItem.dart';
import 'package:injectable/injectable.dart';

@Injectable()
@lazySingleton
class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  HomeBloc(this._repository) : super(HomeState()) {
    on<HomePageInitiated>((event, emit) async {
      print("HomeBloc _onHomePageInitiated");
      emit(await _onHomePageInitiated());
    });
    on<HomePageLoadMore>((event, emit) async {
      //延迟2秒
      await Future.delayed(const Duration(seconds: 2));
      emit(await _onHomePageLoadMore());
    });
    on<HomePageRefreshed>((event, emit) async {
      //延迟2秒
      await Future.delayed(const Duration(seconds: 5));
      emit(await _onHomePageRefreshed());
    });
  }

  // @override
  // Stream<HomeState> mapEventToState(
  //     HomeEvent event,
  //     ) async* {
  //   if (event is HomePageInitiated) {
  //     yield await _onHomePageInitiated();
  //   } else if (event is HomePageLoadMore) {
  //     yield await _onHomePageLoadMore();
  //   }else if (event is HomePageRefreshed) {
  //     yield await  _onHomePageRefreshed();
  //   }
  // }
  final Repository _repository;

  Future<HomeState> _onHomePageInitiated() async {
    try {
      List<BusinessItem> playList = await _repository.playlist("");
      print("33 HomeBloc _onHomePageInitiated playList:$playList");
      // 获取数据后触发页面更新
      return HomeState(playList: playList, hasMore: true);
    } catch (err) {
    print("33 HomeBloc _onHomePageInitiated err:$err");
      addError(err, StackTrace.current);
      return HomeState(error: Exception(err));
    }
  }

  Future<HomeState> _onHomePageLoadMore() async {
    try {
      List<BusinessItem> newList = [];
      newList.addAll(state.playList);
      List<BusinessItem> playList = await _repository.playlist("");
      newList.addAll(playList);
      // 获取数据后触发页面更新
      return HomeState(playList: newList, hasMore: true);
    } catch (err) {
      addError(err, StackTrace.current);
      return HomeState(error: Exception(err));
    }
  }

  Future<HomeState> _onHomePageRefreshed() async {
    try {
      print("HomeBloc (1)_onHomePageRefreshed:$_onHomePageRefreshed");
      List<BusinessItem> playList = await _repository.playlist("");
      // 获取数据后触发页面更新
      onRefreshCompleted();
      return HomeState(playList: playList, hasMore: true);
    } catch (err) {
      addError(err, StackTrace.current);
      onRefreshError(err);
      return HomeState(error: Exception(err));
    }
  }

  @override
  void onChange(Change<HomeState> change) {
    super.onChange(change);
    print("HomeBloc change:$change");
  }

  @override
  void onEvent(HomeEvent event) {
    // TODO: implement onEvent
    super.onEvent(event);
    print("HomeBloc onEvent:$event");
  }

  @override
  void onTransition(Transition<HomeEvent, HomeState> transition) {
    super.onTransition(transition);
    print("HomeBloc onTransition:$transition");
  }

  @override
  Future<void> close() {
    _repository.dispose();
    return super.close();
  }
}
