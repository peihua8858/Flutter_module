import 'package:auto_route/auto_route.dart';
import 'package:flutter_module/AppRouter.gr.dart';
import 'package:flutter_module/bloc/DetailScreen.dart';
import 'package:flutter_module/bloc/base/base_domain.dart';
import 'package:flutter_module/bloc/home/HomeBloc.dart';
import 'package:flutter_module/model/BusinessItem.dart';
import 'package:flutter_module/bloc/home/HomeState.dart';
import 'package:flutter_module/bloc/home/HomeEvent.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

@RoutePage()
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

  // @override
  // Widget buildBody(BuildContext context) {
  //   return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
  //     return GridView.custom(
  //       shrinkWrap: true,
  //       controller: scrollController,
  //       scrollDirection: Axis.vertical,
  //       childrenDelegate: SliverChildListDelegate(
  //         [
  //           for (var index = 0; index < state.playList.length; index++)
  //             itemViews(state.playList, index),
  //           if (state.hasMore)
  //             // 显示加载更多，并且底部撑满屏幕宽度
  //             StaggeredGridTile.fit(crossAxisCellCount: 1,
  //               child: SizedBox(
  //                 width: double.infinity, // 宽度撑满屏幕
  //                 height: 20,
  //                 child: Center(child: CircularProgressIndicator()),
  //               ),
  //             )
  //             // SizedBox(
  //             //   width: double.infinity, // 宽度撑满屏幕
  //             //   height: 2,
  //             //   child: Center(child: CircularProgressIndicator()),
  //             // )
  //         ],
  //       ),
  //       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //         crossAxisCount: 3,
  //         mainAxisSpacing: 10,
  //         crossAxisSpacing: 10,
  //       ),
  //     );
  //   });
  // }

  // @override
  // Widget buildBody(BuildContext context) {
  //   return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
  //     return GridView.count(
  //           crossAxisCount: 3,
  //           mainAxisSpacing: 10,
  //           crossAxisSpacing: 10,
  //           shrinkWrap: true,
  //           controller: scrollController,
  //           scrollDirection: Axis.vertical,
  //           children: [
  //             for (var index = 0; index < state.playList.length; index++)
  //               itemViews(state.playList, index),
  //             if (state.hasMore)
  //               SizedBox(
  //                 width: double.infinity, // 宽度撑满屏幕
  //                 height: 2,
  //                 child: Center(child: CircularProgressIndicator()),
  //               )
  //           ],
  //         );
  //   });
  // }

  Widget itemViews(List<BusinessItem> items, int index) {
    var item = items[index];
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 420,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          GridTile(
              footer: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, Colors.black],
                    ),
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(item.title,
                          style:
                              TextStyle(fontSize: 20, color: Colors.white)))),
              child: Image(image: Image.network(item.imageUrl).image)),
          Material(
            type: MaterialType.transparency,
            child: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: () {
                  AutoRouter.of(context).push(DetailScreenRoute(item: item));
                }),
          )
        ],
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return SizedBox(
          width: double.infinity, // 确保容器宽度充满
          child: SingleChildScrollView(
              controller: scrollController,
              child: StaggeredGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                children: [
                  for (var index = 0; index < state.playList.length; index++)
                    StaggeredGridTile.fit(
                        crossAxisCellCount: 1,
                        child: itemViews(state.playList, index)),
                  if (state.hasMore)
                    StaggeredGridTile.fit(
                        crossAxisCellCount: 3,
                        child: Container(
                          width: double.infinity, // 宽度撑满屏幕
                          height: 100,
                          color: Colors.transparent,
                          child: Center(child: CircularProgressIndicator()),
                        ))
                ],
              )));
    });
  }
}
