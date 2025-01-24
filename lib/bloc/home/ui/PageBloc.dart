import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_module/bloc/base/ui/BasePageWidget.dart';
import 'package:flutter_module/bloc/home/HomeBloc.dart';
import 'package:flutter_module/BusinessItem.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_module/bloc/home/HomeState.dart';
import 'package:flutter_module/bloc/home/HomeEvent.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
      return SizedBox(
          width: double.infinity, // 确保容器宽度充满
          child: StaggeredGridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            shrinkWrap: true,
            // controller: scrollController,
            children: [
              for (var index = 0; index < state.playList.length; index++)
                itemViews(state.playList, index),
              if (state.hasMore)
                SizedBox(
                  width: double.infinity, // 宽度撑满屏幕
                  height: 20,
                  child: Center(child: CircularProgressIndicator()),
                )
            ],
            staggeredTiles: [
              for (var index = 0; index < state.playList.length; index++)
                StaggeredTile.count(1, 1),
              if (state.hasMore) StaggeredTile.count(3, 1),
            ],
          ));
    });

    //   return SizedBox(
    //       width: double.infinity, // 确保容器宽度充满
    //       child: GridView.count(
    //         crossAxisCount: 3,
    //         mainAxisSpacing: 10,
    //         crossAxisSpacing: 10,
    //         // controller: scrollController,
    //         shrinkWrap: true,
    //         scrollDirection: Axis.vertical,
    //         children: [
    //           for (var index = 0; index < state.playList.length; index++)
    //             itemViews(state.playList, index),
    //           if (state.hasMore)
    //             SizedBox(
    //               width: double.infinity, // 宽度撑满屏幕
    //               height: 20,
    //               child: Center(child: CircularProgressIndicator()),
    //             )
    //         ],
    //       ));
    // });
  }

  Widget itemViews(List<BusinessItem> items, int index) {
    var item = items[index];
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: GridTile(
          child: Image(image: Image.network(item.imageUrl).image),
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
                      style: TextStyle(fontSize: 20, color: Colors.white))))),
    );
  }
}
