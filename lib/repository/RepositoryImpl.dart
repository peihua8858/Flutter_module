import 'package:flutter_module/repository/Repository.dart';
import 'package:flutter/services.dart';
import 'package:flutter_module/utils/LogMixin.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_module/BusinessItem.dart';
import 'dart:convert';
@LazySingleton(as: Repository)
class RepositoryImpl with LogMixin implements Repository {
  @override
  Future<List<BusinessItem>> playlist(String id) async {
    final jsonString = await rootBundle.loadString('assets/media_data.json');
    final json = jsonDecode(jsonString);
    print("RepositoryImpl playlist json:$json");
    List<BusinessItem> result =
        List<BusinessItem>.from(json.map((e) => BusinessItem.fromJson(e)))
            .toList();
    return result;
  }

}
