import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_module/bloc/base/BaseBloc.dart';
import 'package:flutter_module/utils/LogMixin.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_module/repository/RepositoryImpl.dart';
import 'package:flutter_module/repository/Repository.dart';

abstract class BasePageWidget extends StatefulWidget with LogMixin{
  const BasePageWidget(this.title, {super.key});

  final String title;
}

abstract class BasePageState<T extends BasePageWidget, B extends BaseBloc>
    extends State<T> with LogMixin {

  late final B bloc = GetIt.instance.get<B>();

  Widget buildBody(BuildContext context);

  int get counter => _counter;
  int _counter = 0;

  void onFtButtonClick() {
    print("onButtonClick");
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        lazy: false,
        create: (context) => bloc,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.title,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          body: buildBody(context),
          floatingActionButton: FloatingActionButton.small(
            onPressed: onFtButtonClick,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ));
  }
}
