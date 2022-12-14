import 'package:flutter/material.dart';
import 'package:spotify/constants/colors.dart';
import 'package:spotify/data/data.dart';
import 'package:spotify/view/top_hits/widgets/sliver_app_bar_widget.dart';

class TopHits extends StatefulWidget {
  const TopHits({super.key});

  @override
  State<TopHits> createState() => _TopHitsState();
}

class _TopHitsState extends State<TopHits> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          const SliverAppBarWidget(),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 65,
                    width: 65,
                    decoration: BoxDecoration(
                      color: ColorConstants.primaryColor,
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: const Icon(Icons.play_arrow, size: 35,),
                  ),
                  const Text('Featured', style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal
                  )),
                  ListView.separated(
                    separatorBuilder: (context, index) {
                      return const Divider(
                        height: 5,
                        thickness: 0.5,
                        color: Colors.grey,
                      );
                    },
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: topHit.length,
                    itemBuilder: (BuildContext context, int index) {
                      final item = topHit[index];

                      return Card(
                        color: Colors.black,
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 0,
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10)
                                    ),
                                    child: Image.asset(item['image']),
                                  ),
                                ),
                                const SizedBox(width: 12,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(item['title'].toString().toUpperCase(), style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700)),
                                      const SizedBox(height: 8),
                                      Text(item['description'], style: const TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500))
                                    ],
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite, color: item['favorite']
                                  ? ColorConstants.primaryColor
                                  : Colors.white),),
                                const SizedBox(width: 12),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.more_vert, color: Colors.white,)),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ),
        ],
      ),
    );
  }
}
