import 'package:flutter/material.dart';
import 'package:spotify/data/data.dart';

class TopHits extends StatefulWidget {
  const TopHits({super.key});

  @override
  State<TopHits> createState() => _TopHitsState();
}

class _TopHitsState extends State<TopHits> {

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
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
          actions: const [
            Icon(
              Icons.favorite_outline,
              color: Colors.white,
            ),
            SizedBox(width: 16,),
            Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            SizedBox(width: 16),
          ],
          flexibleSpace: FlexibleSpaceBar(
            // collapseMode: CollapseMode.parallax,
            background: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/topHit.png'),
                  fit: BoxFit.none,
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Todays'.toUpperCase(), style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, fontFamily: 'Inter')),
                  Text('Top Hit'.toUpperCase(), style: const TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, fontFamily: 'Inter')),
                  Row(
                    children: const [
                      Icon(Icons.favorite, color: Colors.white54, size: 14,),
                      SizedBox(width: 4,),
                      Text('357,828 likes', style: TextStyle(color: Colors.white54, fontSize: 13)),
                      SizedBox(width: 50,),
                      Icon(Icons.watch, color: Colors.white54, size: 14,),
                      SizedBox(width: 4,),
                      Text('2hr 40min', style: TextStyle(color: Colors.white54, fontSize: 13)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 65,
                width: 65,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50)
                ),
                child: const Icon(Icons.play_arrow, size: 35,),
              ),
              const Padding(
                padding: EdgeInsets.only(top:16, left: 16, right: 16,),
                child: Text('Featuring', style: TextStyle(color: Colors.white, fontSize: 24))),
              ListView.separated(
                separatorBuilder: (context, index) {
                  return const Divider(
                    height: 0,
                    thickness: 0.4,
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
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(item['title'].toString().toUpperCase(), style: const TextStyle(fontSize: 15, color: Colors.white, fontWeight: FontWeight.w700)),
                                  const SizedBox(height: 8),
                                  Text(item['description'], style: const TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.w500))
                                ],
                              ),
                            ),
                            Icon(Icons.favorite, color: item['favorite']
                              ? Colors.green
                              : Colors.white),
                            const SizedBox(width: 12),
                            const Icon(Icons.more_vert, color: Colors.white,)
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          )
        ),
      ],
    );
  }
}
