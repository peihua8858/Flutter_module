import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_module/BasePageWidget.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'BusinessItem.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

@RoutePage()
class PageBusiness extends BasePageWidget {
  const PageBusiness(super.title, {super.key});

  @override
  State<PageBusiness> createState() => _PageBusinessState();
}

class _PageBusinessState extends BasePageState<PageBusiness> {
  List<BusinessItem> items = [];

  @override
  void initState() {
    super.initState();
    refreshData();
  }

  void refreshData() async {
    final jsonString = await rootBundle.loadString('assets/media_data.json');
    final json = jsonDecode(jsonString);
    print(json);
    List<BusinessItem> result =
    List<BusinessItem>.from(json.map((e) => BusinessItem.fromJson(e)))
        .toList();
    setState(() {
      items = result;
    });
  }

  ///
  /// 以下是GridView GridTile 网格布局，底部文案暗背景
  ///
  @override
  Widget buildBody(BuildContext context) {
    return Center(
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          controller: new ScrollController(keepScrollOffset: false),
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: List.generate(
              items.length,
                  (index) => itemViews(index)),
        ));
  }

  Widget itemViews(int index) {
    var item = items[index];
    return GridTile(
        child: Image(
            image: Image
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
                    style: TextStyle(
                        fontSize: 20, color: Colors.white)))));
  }

///
/// 以下是AlignedGridView 网格布局
///
// @override
// Widget buildBody(BuildContext context) {
//   return Center(
//       child: AlignedGridView.count(
//     crossAxisCount: 3,
//     mainAxisSpacing: 10,
//     crossAxisSpacing: 10,
//     controller: new ScrollController(keepScrollOffset: false),
//     shrinkWrap: true,
//     scrollDirection: Axis.vertical,
//     itemCount: items.length,
//     itemBuilder: (context, index) {
//       return Column(children: [
//         Image(image: Image.network(items[index].imageUrl).image),
//         Text(items[index].title,
//             style: TextStyle(fontSize: 20, color: Colors.black)),
//       ], mainAxisAlignment: MainAxisAlignment.center);
//     },
//   ));
// }

///
///以下是GridView 网格布局，item 宽高比例必须固定，否则会出现现在不全的问题
///
// @override
// Widget buildBody(BuildContext context) {
//   return Center(
//       child: GridView.count(
//     crossAxisCount: 3,
//     mainAxisSpacing: 10,
//     crossAxisSpacing: 10,
//     childAspectRatio: 33 / 36,
//     controller: new ScrollController(keepScrollOffset: false),
//     shrinkWrap: true,
//     scrollDirection: Axis.vertical,
//     itemCount: items.length,
//     children: [
//       for (var item in items)
//         Column(children: [
//           Image(
//               image: Image.network(item.imageUrl).image,
//               fit: BoxFit.fitWidth),
//           Text(item.title,
//               style: TextStyle(fontSize: 20, color: Colors.black)),
//         ])
//     ],
//   ));
// }
}
