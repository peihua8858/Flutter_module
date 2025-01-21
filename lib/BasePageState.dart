import 'package:flutter/material.dart';
import 'dart:ui';

abstract class BasePageWidget extends StatefulWidget {
  const BasePageWidget(this.title, {super.key});

  final String title;
}

abstract class BasePageState<T extends BasePageWidget> extends State<T> {
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
    return Scaffold(
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
    );
  }
}
