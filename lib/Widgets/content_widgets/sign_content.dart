import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tawasel/Cubits/content_learning_cubit/content_learning_cubit.dart';
import 'package:tawasel/widgets/content_widgets/content_success_state.dart';

import 'sign_item.dart';

class SignContent extends StatelessWidget {
  const SignContent({
    super.key,
    required this.itemsCount,
    required this.categoryName,
  });

  final int itemsCount;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ContentLearningCubit()..getContnet(categoryName: categoryName),
      child: BlocBuilder<ContentLearningCubit, ContentLearningState>(
        builder: (context, state) {
          if (state is ContentLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is ContentSuccess) {
            final items = state.items.reversed.toList();
            if (items.isEmpty) {
              return Center(
                child: Text(
                  "There is no data now..",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
              );
            }
            return ContentSuccessState(itemsCount: itemsCount, items: items);
          } else if (state is ContentError) {
            return Center(child: Text("خطأ: ${state.message}"));
          } else {
            return SizedBox();
          }
        },
      ),
    );
  }
}
