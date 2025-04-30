import 'package:tawasel/Models/content_models/item_model.dart';
import 'package:tawasel/helper/Api.dart';

class ContentLearningServices {
  Future<List<ItemModel>> getContnetByCategory({
    required String categoryName,
  }) async {
    String token = "78|yEhATJrUXevjycPqMoICmuM5GxLufAQRKWZ2rZPU76e228c8";
    Map<String, dynamic> response = await Api().get(
      headers: {'Authorization': 'Bearer $token', 'Accept': 'application/json'},
      url:
          'https://finalproject.mass-fluence.com/api/content-learning?category=$categoryName',
    );

    List<ItemModel> contentList = [];
    List<dynamic> contentData = response['data']['content_learning'];

    for (var item in contentData) {
      contentList.add(ItemModel.fromJson(item));
    }

    return contentList;
  }
}
