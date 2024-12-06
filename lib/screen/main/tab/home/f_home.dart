import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/entity/dummies.dart';
import 'package:fast_app_base/screen/main/fab/w_floating_danggeunButton.dart';
import 'package:fast_app_base/screen/main/fab/w_floating_danggeun_button.riverpod.dart';
import 'package:fast_app_base/screen/main/tab/home/w_product_post_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeFragment extends ConsumerStatefulWidget {
  const HomeFragment({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeFragmentState();
}

class _HomeFragmentState extends ConsumerState<HomeFragment> {
  final scrollController = ScrollController();
  String title = "구로동";

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
    return Column(
      children: [
        AppBar(
          title: PopupMenuButton<String>(
            constraints: const BoxConstraints.expand(),
            onSelected: (value) {
              setState(() {
                title = value;
              });
            },
            itemBuilder: (context) => ["구로동", "독산동"]
                .map((e) => PopupMenuItem(
                      value: e,
                      child: e.text.make(),
                    ))
                .toList(),
            child: title.text.make(),
          ),
        ),
        Expanded(
          child: ListView.separated(
            padding:
                const EdgeInsets.only(bottom: FloatingDanggeunButton.height),
            controller: scrollController,
            itemBuilder: (context, index) {
              return ProductPostItem(postList[index]);
            },
            itemCount: postList.length,
            separatorBuilder: (context, index) =>
                const Line().pSymmetric(h: 15),
          ),
        ),
      ],
    );
  }
}
