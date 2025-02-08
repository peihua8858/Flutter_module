import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_module/BasePageWidget.dart';
@RoutePage()
class PageAccount extends BasePageWidget {
  const PageAccount(super.title, {super.key});

  @override
  State<PageAccount> createState() => _PageAccountState();
}

class _PageAccountState extends BasePageState<PageAccount> {
  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many timesgg:',
          ),
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ],
      ),
    );
  }
}
