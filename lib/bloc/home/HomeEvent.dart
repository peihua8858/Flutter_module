import 'package:flutter_module/bloc/base/BaseEvent.dart';
import 'Completer.dart';
class HomeEvent extends BaseEvent {
  const HomeEvent();
}

class HomePageInitiated extends HomeEvent {
  const HomePageInitiated(this.status);

  final AuthenticationStatus status;
}

class HomePageRefreshed extends HomeEvent {
  const HomePageRefreshed(this.completer);

  Completer<void> completer;
}

class HomePageLoadMore extends HomeEvent {
  const HomePageLoadMore(this.completer);
  Completer<void> completer;
}