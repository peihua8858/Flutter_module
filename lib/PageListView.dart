import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_module/BasePageWidget.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

@RoutePage()
class PageListView extends BasePageWidget {
  const PageListView(super.title, {super.key});

  @override
  State<PageListView> createState() => _PageListViewState();
}

class _PageListViewState extends BasePageState<PageListView> {
  List<ItemBean> items = [];

  void refreshData() async {
    var response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums'),
    );
    if (response.statusCode == 200) {
      var source = response.body;
      var json = jsonDecode(source);
      var result =
          List<ItemBean>.from(json.map((e) => ItemBean.fromJson(e))).toList();
      setState(() {
        items = result;
      });
    } else {
      print(response.statusCode);
    }
  }

  void initState() {
    super.initState();
    refreshData();
  }

  @override
  Widget buildBody(BuildContext context) {
    return Center(
        child: ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10.0),
          child: Material(
            elevation: 4.0,
            borderRadius: BorderRadius.circular(5.0),
            color: index % 2 == 0 ? Colors.cyan : Colors.deepOrange,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Text("${items[index].id}.${items[index].title}",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ),
        );
      },
      scrollDirection: Axis.vertical,
      reverse: false,
      controller: ScrollController(),
      primary: false,
      physics: const AlwaysScrollableScrollPhysics(),
    )
        // child: ListView(
        //     scrollDirection: Axis.vertical,
        //     reverse: false,
        //     controller: ScrollController(),
        //     primary: false,
        //     physics: const AlwaysScrollableScrollPhysics(),
        //     children: List.generate(items.length, (index) =>
        //         Text("${items[index].id}.${items[index].title}",
        //             style: TextStyle(fontSize: 20, color: Colors.black)))
        // )
        );
  }
}

class ItemBean {
  String title;
  String id;
  String userId;

  ItemBean({required this.title, required this.id, required this.userId});

  factory ItemBean.fromJson(Map<String, dynamic> json) {
    return ItemBean(
      title: json['title'],
      id: json['id'].toString(),
      userId: json['userId'].toString(),
    );
  }
}
