import 'package:gql_http_link/gql_http_link.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

Client initClient() {
  Hive.init('hive_data');
  // OR, if using flutter
  // await Hive.initFlutter();

  // final box = await Hive.openBox("graphql");

  // final store = HiveStore(box);

  // final cache = Cache(store: store);

  final link = HttpLink('http://localhost:4000/api/graphql');

  final client = Client(
    link: link,
    // cache: cache,
  );

  return client;
}
