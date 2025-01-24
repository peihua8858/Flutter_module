
import 'package:flutter_module/app/domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_module/bloc/base/BaseBloc.dart';
import 'package:get_it/get_it.dart';

// 自定义的 State 基类
abstract class BasePageState<T extends StatefulWidget,
B extends BaseBloc> extends State<T> {
  // 导航器对象
  late final AppNavigator navigator = GetIt.instance.get<AppNavigator>();

  // 给当前页面绑定的 `bloc` 的 `navigator` 赋值
  late final B bloc = GetIt.instance.get<B>()
    ..navigator = navigator;
}