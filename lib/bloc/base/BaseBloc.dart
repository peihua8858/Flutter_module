
import 'package:bloc/bloc.dart';
import 'package:flutter_module/bloc/base/BaseEvent.dart';
import 'package:flutter_module/bloc/base/BaseBlocState.dart';
abstract class BaseBloc<Event extends BaseEvent, State extends BaseBlocState> extends Bloc<Event, State>{
  const BaseBloc(State initialState) : super(initialState);
}