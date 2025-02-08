import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_module/BasePageWidget.dart';
@RoutePage()
class PageSchool extends BasePageWidget {
  const PageSchool(super.title, {super.key});
  @override
  State<PageSchool> createState() => _PageSchoolState();
}

class _PageSchoolState extends BasePageState<PageSchool> {

  @override
  Widget buildBody(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          Text(
            '$counter',
            style: Theme
                .of(context)
                .textTheme
                .headlineMedium,
          ),
        ],
      ),
    );
  }
}
