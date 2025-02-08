import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_module/bloc/base/BaseBloc.dart';
import 'package:flutter_module/bloc/home/HomeEvent.dart';
import 'package:flutter_module/utils/LogMixin.dart';
import 'package:get_it/get_it.dart';

abstract class BasePageWidget extends StatefulWidget with LogMixin {
  const BasePageWidget(this.title, {super.key});

  final String title;
}

abstract class BasePageState<T extends BasePageWidget, B extends BaseBloc>
    extends State<T> with LogMixin {
  late final B bloc = GetIt.instance.get<B>();
  final ScrollController _scrollController = ScrollController(); //listview的控制器
  Widget buildBody(BuildContext context);

  ScrollController get scrollController => _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        bloc.add(HomePageLoadMore());
      }
    });
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    bloc.close();
    _scrollController.dispose();
  }
  void onFtButtonClick() {
    print("onButtonClick");
    scrollController.animateTo(0,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  Future<void> _onRefresh() async {
    print("onRefresh");
    bloc.add(HomePageRefreshed());
    return bloc.waiteRefresh();
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
          body: RefreshIndicator(
            onRefresh: () => _onRefresh(),
            child: buildBody(context),
          ),
          floatingActionButton: FloatingActionButton.small(
            onPressed: onFtButtonClick,
            tooltip: 'Increment',
            child: const Icon(Icons.arrow_upward),
          ),
        ));
  }
}
