import 'package:auto_route/auto_route.dart';
import 'package:extended_list/extended_list.dart';
import 'package:flutter_module/AppRouter.gr.dart';
import 'package:flutter_module/bloc/base/base_domain.dart';
import 'package:flutter_module/bloc/home/HomeBloc.dart';
import 'package:flutter_module/model/BusinessItem.dart';
import 'package:flutter_module/bloc/home/HomeState.dart';
import 'package:flutter_module/bloc/home/HomeEvent.dart';

@RoutePage()
class PageBloc3 extends BasePageWidget {
  const PageBloc3(super.title, {super.key});

  @override
  State<PageBloc3> createState() => _PageBloc3State();
}

class _PageBloc3State extends BasePageState<PageBloc3, HomeBloc> {
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
          child: ExtendedGridView.count(
            controller: scrollController,
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            extendedListDelegate: ExtendedListDelegate(
              lastChildLayoutTypeBuilder: state.hasMore
                  ? ((int index) => state.playList.length == index
                      ? LastChildLayoutType.foot
                      : LastChildLayoutType.none)
                  : null,
            ),
            children: [
              for (var index = 0; index < state.playList.length; index++)
                itemViews(state.playList, index),
              if (state.hasMore) _buildLoadingView()
            ],
          ));
    });
  }

  Widget _buildLoadingView() {
    return Container(
      width: double.infinity, // 撑满宽度
      padding: EdgeInsets.symmetric(vertical: 10.0), // 给一些上下内边距
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // 中心对齐
        children: [
          CircularProgressIndicator(),
          SizedBox(width: 10),
          Text("加载更多..."),
        ],
      ),
    );
  }


  Widget itemViews(List<BusinessItem> items, int index) {
    var item = items[index];
    item.toJson();
    return itemView(item, index);
  }

  Widget itemView(BusinessItem item, int index) {
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
}
