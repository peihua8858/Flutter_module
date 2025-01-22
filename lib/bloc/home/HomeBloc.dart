import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/bloc/base/BaseBloc.dart';
import 'package:flutter_module/bloc/home/HomeEvent.dart';
import 'package:flutter_module/bloc/home/HomeState.dart';
import 'package:flutter_module/repository/Repository.dart';

class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  const HomeBloc(this._repository) : super(HomeState()) {
    {
      on<HomePageInitiated>(
        _onHomePageInitiated,
        transformer: log(),
      );

      on<HomePageLoadMore>(
        _onHomePageLoadMore,
        transformer: log(),
      );

      on<HomePageRefreshed>(
        _onHomePageRefreshed,
        transformer: log(),
      );
    }

    final Repository _repository;

    FutureOr<void> _onHomePageInitiated(HomePageInitiated event,
        Emitter<HomeState> emit) async {
      try {
        List<PlayListItemData> playList = await _repository.playlist("");
        // 获取数据后触发页面更新
        emit(state.copyWith(playList: playList));
      } catch (err) {
        Log.e(err);
      }
    }
  }
