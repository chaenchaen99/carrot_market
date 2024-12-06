import 'package:fast_app_base/screen/main/fab/w_floating_danggeun_button.riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeFragment extends ConsumerStatefulWidget {
  const HomeFragment({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends ConsumerState<HomeFragment> {
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
        Container(height: 500, color: Colors.red),
        Container(height: 500, color: Colors.blue),
        Container(height: 500, color: Colors.orange),
        Container(height: 500, color: Colors.green),
      ],
    );
  }
}
