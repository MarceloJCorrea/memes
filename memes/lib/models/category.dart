import 'package:memes/repositories/table_keys.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class Category {
  Category({required this.id, required this.description});

  Category.fromParse(ParseObject parseObject)
      : id = parseObject.objectId,
        description = parseObject.get(keyCategoryDescription);

  final String? id;
  final String description;

  @override
  String toString() {
    return 'Category{id: $id, description: $description}';
  }
}
