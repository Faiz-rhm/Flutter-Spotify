import 'package:flutter/material.dart';
import 'package:spotify/view/top_hits/widgets/flexible_app_bar_widget.dart';

class SliverAppBarWidget extends StatelessWidget {
  const SliverAppBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white,),
      ),
      stretch: false,
      snap: true,
      floating: true,
      surfaceTintColor: Colors.black,
      backgroundColor: Colors.black,
      expandedHeight: 378,
      elevation: 1,
      pinned: true,
      titleSpacing: 16,
      centerTitle: true,
      // title: const Text('Top Hit'),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_outline)
        ),
        const SizedBox(width: 16,),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
          color: Colors.white,
        ),
      ],
      flexibleSpace: const FlexibleSpaceBarWidget(),
    );
  }
}
