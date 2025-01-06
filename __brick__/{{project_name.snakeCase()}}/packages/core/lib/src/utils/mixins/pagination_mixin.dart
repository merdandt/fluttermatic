import 'package:flutter/material.dart';

mixin PaginationMixin<T extends StatefulWidget> on State<T> {
  ScrollController get scrollController;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_isBottom(scrollController)) {
      onBottomReached();
    }
  }

  bool _isBottom(final ScrollController controller) {
    if (!controller.hasClients) return false;
    final maxScroll = controller.position.maxScrollExtent;
    final currentScroll = controller.offset;

    return currentScroll >= (maxScroll * 0.9); // Threshold of 90% scroll
  }

  void onBottomReached();
}
