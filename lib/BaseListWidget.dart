// import 'package:flutter/material.dart';
// import 'package:flutter_module/BasePageWidget.dart';
//
// abstract class BaseListWidget<T extends Object> extends BasePageWidget {
//   const BasePageWidget(this.title, {super.key});
//
//   final String title;
//   List<T> items = [];
//
//  abstract void refreshData()
// }
//
// abstract class BaseListWidgetState<T extends BaseListWidget>
//     extends BasePageState<T> {
//   void initState() {
//     super.initState();
//     widget.refreshData();
//   }
//
//   @override
//   Widget buildBody(BuildContext context) {
//     return Center(
//         child: ListView.builder(
//           itemCount: widget.items.length,
//           itemBuilder: (context, index) {
//             return Container(
//               padding: EdgeInsets.all(10.0),
//             );
//           },
//         ));
//   }
// }