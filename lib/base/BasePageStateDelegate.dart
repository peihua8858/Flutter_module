import 'package:flutter/material.dart';
import 'package:flutter_module/bloc/base/BaseBloc.dart';
import 'package:flutter_module/bloc/base/BaseEvent.dart';
import 'package:flutter_module/bloc/base/BaseBlocState.dart';
import 'package:flutter_module/utils/LogMixin.dart';
import 'package:get_it/get_it.dart';

abstract class BasePageState<T extends StatefulWidget, B extends BaseBloc<BaseEvent, BaseBlocState>>
extends BasePageStateDelegate<T, B> with LogMixin {}


class BasePageStateDelegate<T extends StatefulWidget,B extends BaseBloc<BaseEvent, BaseBlocState>> extends State<T> {
  BasePageStateDelegate();
  late final AppNavigator navigator = GetIt.instance.get<AppNavigator>();

  late final B bloc = GetIt.instance.get<B>()
  ..navigator = navigator;
}