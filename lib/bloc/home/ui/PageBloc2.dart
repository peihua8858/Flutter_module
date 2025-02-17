// import 'package:auto_route/auto_route.dart';
// import 'package:flutter_module/AppRouter.gr.dart';
// import 'package:flutter_module/bloc/DetailScreen.dart';
// import 'package:flutter_module/bloc/base/base_domain.dart';
// import 'package:flutter_module/bloc/home/CustomGridDelegate.dart';
// import 'package:flutter_module/bloc/home/HomeBloc.dart';
// import 'package:flutter_module/BusinessItem.dart';
// import 'package:flutter_module/bloc/home/HomeState.dart';
// import 'package:flutter_module/bloc/home/HomeEvent.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
// import 'package:loading_more_list/loading_more_list.dart';
//
// @RoutePage()
// class PageBloc2 extends BasePageWidget {
//   const PageBloc2(super.title, {super.key});
//
//   @override
//   State<PageBloc2> createState() => _PageBloc2State();
// }
//
// class _PageBloc2State extends BasePageState<PageBloc2, HomeBloc> {
//   late BusinessItemRepository repository;
//
//   @override
//   void initState() {
//     super.initState();
//     print("PageBloc initState");
//     bloc.add(HomePageInitiated());
//     repository = BusinessItemRepository(bloc);
//   }
//
//   @override
//   onRefresh() {
//     return repository.refresh();
//   }
//
//   @override
//   dispose() {
//     super.dispose();
//     print("PageBloc dispose");
//     repository.dispose();
//   }
//
//   Widget itemViews(List<BusinessItem> items, int index) {
//     return itemView(items[index], index);
//   }
//
//   Widget itemView(BusinessItem item, int index) {
//     return Container(
//       clipBehavior: Clip.antiAlias,
//       height: 420,
//       decoration: BoxDecoration(
//         shape: BoxShape.rectangle,
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Stack(
//         children: [
//           GridTile(
//               footer: Container(
//                   height: 50,
//                   decoration: BoxDecoration(
//                     shape: BoxShape.rectangle,
//                     gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [Colors.transparent, Colors.black],
//                     ),
//                   ),
//                   child: Padding(
//                       padding: EdgeInsets.all(10.0),
//                       child: Text(item.title,
//                           style:
//                               TextStyle(fontSize: 20, color: Colors.white)))),
//               child: Image(image: Image.network(item.imageUrl).image)),
//           Material(
//             type: MaterialType.transparency,
//             child: InkWell(
//                 borderRadius: BorderRadius.circular(10),
//                 onTap: () {
//                   AutoRouter.of(context).push(DetailScreenRoute(item: item));
//                 }),
//           )
//         ],
//       ),
//     );
//   }
//
//   @override
//   Widget buildBody(BuildContext context) {
//     return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
//       return LoadingMoreList(
//         ListConfig<BusinessItem>(
//             extendedListDelegate:
//             const SliverWaterfallFlowDelegateWithMaxCrossAxisExtent(
//               maxCrossAxisExtent: 420,
//               crossAxisSpacing: 10,
//               mainAxisSpacing: 10,
//             ),
//             // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             //   crossAxisCount: 3, // 一行三个列
//             //   mainAxisSpacing: 10.0, // 主轴间距
//             //   crossAxisSpacing: 10.0, // 交叉轴间距
//             // ),
//             controller: scrollController,
//             lastChildLayoutType: LastChildLayoutType.foot,
//             itemBuilder: (context, item, index) {
//               return itemView(item, index);
//             },
//             indicatorBuilder: (context, status) {
//               return _buildLoadingView();
//             },
//             sourceList: repository),
//       );
//     });
//   }
//
//   Widget _buildLoadingView() {
//     return Container(
//       width: double.infinity, // 撑满宽度
//       padding: EdgeInsets.symmetric(vertical: 10.0), // 给一些上下内边距
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center, // 中心对齐
//         children: [
//           CircularProgressIndicator(),
//           SizedBox(width: 10),
//           Text("加载更多>>>..."),
//         ],
//       ),
//     );
//   }
// }
//
// class BusinessItemRepository extends LoadingMoreBase<BusinessItem> {
//   final HomeBloc bloc;
//   bool _hasMore = true;
//   int pageindex = 1;
//   bool forceRefresh = false;
//
//   BusinessItemRepository(this.bloc);
//
//   @override
//   Future<bool> refresh([bool clearBeforeRequest = false]) async {
//     _hasMore = true;
//     pageindex = 1;
//     //force to refresh list when you don't want clear list before request
//     //for the case, if your list already has 20 items.
//     forceRefresh = !clearBeforeRequest;
//     var result = await super.refresh(clearBeforeRequest);
//     forceRefresh = false;
//     return result;
//   }
//
//   @override
//   Future<bool> loadData([bool isLoadMoreAction = false]) async {
//     HomeState state = await bloc.loadData(isLoadMoreAction);
//     if (pageindex == 1) {
//     }
//     clear();
//     for (var value in state.playList) {
//       add(value);
//     }
//     pageindex++;
//     _hasMore = state.hasMore;
//     return true;
//   }
//
//   @override
//   bool get hasMore => _hasMore;
// }
