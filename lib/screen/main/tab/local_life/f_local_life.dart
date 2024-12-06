import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../fab/w_floating_danggeun_button.riverpod.dart';

class LocalLifeFragment extends ConsumerStatefulWidget {
  const LocalLifeFragment({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _LocalLifeFragmentState();
}

class _LocalLifeFragmentState extends ConsumerState<LocalLifeFragment> {
  final scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      final isBig = ref.read(floatingButtonProvider).isBig;

      if (scrollController.position.pixels > 100 && isBig) {
        ref.read(floatingButtonProvider.notifier).changeButtonSize(false);
      } else if (scrollController.position.pixels < 100 && !isBig) {
        ref.read(floatingButtonProvider.notifier).changeButtonSize(true);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: scrollController,
      children: [
        Container(height: 500, color: Colors.yellow),
        Container(height: 500, color: Colors.green),
        Container(height: 500, color: Colors.yellow),
        Container(height: 500, color: Colors.green),
      ],
    );
  }
}
