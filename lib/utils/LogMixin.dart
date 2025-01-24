import 'dart:developer';

mixin LogMixin on Object {
  void dLog(String message, {DateTime? time}) {
    log(message, name: runtimeType.toString(), time: time);
  }
}