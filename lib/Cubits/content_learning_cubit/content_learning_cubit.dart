import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:tawasel/Models/content_models/item_model.dart';
import 'package:tawasel/Services/content_services/content_service.dart';

part 'content_learning_state.dart';

class ContentLearningCubit extends Cubit<ContentLearningState> {
  ContentLearningCubit() : super(ContentInitial());

  Future<void> getContnet({required String categoryName}) async {
    emit(ContentLoading());
    try {
      final items = await ContentLearningServices().getContnetByCategory(
        categoryName: categoryName,
      );
      emit(ContentSuccess(items));
    } catch (e) {
      emit(ContentError(e.toString()));
    }
  }
}
