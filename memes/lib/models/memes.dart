import 'package:memes/repositories/table_keys.dart';
import 'package:parse_server_sdk/parse_server_sdk.dart';

class Memes{
  Memes.fromParse(ParseObject object){
    id = object.objectId!;
    title = object.get(keyMemesTitle);
    images = object.get<List>(keyMemesImages)!.map((e) => e.url).toList();
    created = object.createdAt!;
    views = object.get<int>(keyMemesViews, defaultValue: 0)!;
  }

  Memes();

  late String id;

  late List images = [];

  late String title;

  late DateTime created;
  late int views;

}