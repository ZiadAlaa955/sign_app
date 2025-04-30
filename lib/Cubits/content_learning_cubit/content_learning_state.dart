part of 'content_learning_cubit.dart';

@immutable
sealed class ContentLearningState {}

class ContentInitial extends ContentLearningState {}

class ContentLoading extends ContentLearningState {}

class ContentSuccess extends ContentLearningState {
  final List<ItemModel> items;
  ContentSuccess(this.items);
}

class ContentError extends ContentLearningState {
  final String message;
  ContentError(this.message);
}
