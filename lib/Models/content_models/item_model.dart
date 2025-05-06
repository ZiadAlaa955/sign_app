import 'package:hive/hive.dart';
part 'item_model.g.dart';

class ItemModel {
  @HiveField(0)
  final String mediaPath;
  @HiveField(1)
  final String text;
  @HiveField(2)
  String? localImagePath;
  ItemModel({required this.mediaPath, required this.text, this.localImagePath});
  factory ItemModel.fromJson(Map<String, dynamic> jsonData) {
    const String baseUrl = 'https://finalproject.mass-fluence.com/';
    return ItemModel(
      mediaPath: baseUrl + jsonData['attachment'],
      text: jsonData['description'],
    );
  }
}
