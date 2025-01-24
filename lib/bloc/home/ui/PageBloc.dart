import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_module/bloc/base/ui/BasePageWidget.dart';
import 'package:flutter_module/bloc/home/HomeBloc.dart';
import 'package:flutter_module/BusinessItem.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_module/bloc/home/HomeState.dart';
import 'package:flutter_module/bloc/home/HomeEvent.dart';

class PageBloc extends BasePageWidget {
  const PageBloc(super.title, {super.key});

  @override
  State<PageBloc> createState() => _PageBlocState();
}

class _PageBlocState extends BasePageState<PageBloc, HomeBloc> {

  @override
  void initState() {
    super.initState();
    print("PageBloc initState");
    bloc.add(HomePageInitiated());
  }

  @override
  Widget buildBody(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      print("PageBloc buildBody state:$state");
      return Center(
          child: GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            controller: new ScrollController(keepScrollOffset: false),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            children: List.generate(state.playList.length, (index) => itemViews(state.playList,index)),
          )
      );
    });
  }

  Widget itemViews(List<BusinessItem> items,int index) {
    var item = items[index];
    return GridTile(
        child: Image(image: Image
            .network(item.imageUrl)
            .image),
        footer: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.transparent, Colors.black],
              ),
            ),
            child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(item.title,
                    style: TextStyle(fontSize: 20, color: Colors.white)))));
  }
}
