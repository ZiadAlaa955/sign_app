import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:tawasel/Cubits/content_learning_cubit/content_learning_state.dart';
import 'package:tawasel/Models/content_models/item_model.dart';
import 'package:tawasel/Services/content_services/content_service.dart';
import 'package:tawasel/helper/check_network.dart';
import 'package:tawasel/helper/constants.dart';
import 'package:tawasel/helper/download_and_save_media.dart';

class ContentCubit extends Cubit<ContentState> {
  ContentCubit() : super(ContentInitial());
  final _box = Hive.box(kItemBox);

  Future<void> getContnet({required String categoryName}) async {
    if (isClosed) return;
    emit(ContentLoading());
    final rawCachedData = _box.get(categoryName);

    List<ItemModel>? cachedData;
    if (rawCachedData != null && rawCachedData is List) {
      try {
        cachedData = rawCachedData.cast<ItemModel>();
      } catch (e) {
        cachedData = null;
      }
    }

    final isCachedDataValid = cachedData != null && cachedData.isNotEmpty;

    if (isCachedDataValid) {
      if (isClosed) return;

      emit(ContentSuccess(cachedData));
    }

    final hasConnection = await NetworkHelper.hasInternetConnection();
    if (!hasConnection) {
      if (!isCachedDataValid) {
        emit(ContentError("لا يوجد اتصال بالإنترنت ولا بيانات محفوظة."));
      }
      return;
    }

    try {
      final items = await ContentLearningServices()
          .getContnetByCategory(categoryName: categoryName);

      await Future.wait(
        items.map((item) async {
          final path = await downloadAndSaveMedia(item.mediaPath, item.text);
          item.localImagePath = path;
        }),
      );

      await _box.put(categoryName, items);
      if (isClosed) return;

      emit(ContentSuccess(items));
    } catch (e) {
      if (!isCachedDataValid) {
        emit(ContentError("فشل في تحميل البيانات ولا توجد بيانات محفوظة."));
      }
    }
  }
}
