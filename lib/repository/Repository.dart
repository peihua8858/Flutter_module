import 'package:flutter_module/model/BusinessItem.dart';

abstract class Repository {
  Future<List<BusinessItem>> playlist(String id);
 void dispose();
}
