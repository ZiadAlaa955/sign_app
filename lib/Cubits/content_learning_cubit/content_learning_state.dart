import 'package:tawasel/Models/content_models/item_model.dart';

abstract class ContentState {}

class ContentInitial extends ContentState {}

class ContentLoading extends ContentState {}

class ContentSuccess extends ContentState {
  final List<ItemModel> items;
  ContentSuccess(this.items);
}

class ContentError extends ContentState {
  final String message;
  ContentError(this.message);
}
