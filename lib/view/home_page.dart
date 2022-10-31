import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List<Map<String, dynamic>> _list = [
    {
      'image': 'assets/images/google.png',
      'title': 'stay',
      'description': 'The Kid LAROI,Justin Bieber',
      'favorite': true,
    },
    {
      'image': 'assets/images/google.png',
      'title': 'Wishing Well',
      'description': 'Juice WLRD',
      'favorite': true,
    },
    {
      'image': 'assets/images/google.png',
      'title': 'Unstable',
      'description': 'Justin Bieber,The Kid LAROI',
      'favorite': false,
    },
    {
      'image': 'assets/images/google.png',
      'title': 'stay',
      'description': 'The Kid LAROI,Justin Bieber',
      'favorite': false,
    },
    {
      'image': 'assets/images/google.png',
      'title': 'stay',
      'description': 'The Kid LAROI,Justin Bieber',
      'favorite': true,
    },
    {
      'image': 'assets/images/google.png',
      'title': 'Wishing Well',
      'description': 'Juice WLRD',
      'favorite': true,
    },
    {
      'image': 'assets/images/google.png',
      'title': 'Unstable',
      'description': 'Justin Bieber,The Kid LAROI',
      'favorite': false,
    },
    {
      'image': 'assets/images/google.png',
      'title': 'stay',
      'description': 'The Kid LAROI,Justin Bieber',
      'favorite': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          surfaceTintColor: Colors.black,
          expandedHeight: 378,
          elevation: 1,
          pinned: true,
          titleSpacing: 16,
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white,),
            ),
          ),
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
            collapseMode: CollapseMode.pin,
            background: Container(
              alignment: Alignment.topLeft,
              color: Colors.red,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
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
                  )
                ],
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16),
                child: Text('Featuring', style: TextStyle(color: Colors.white, fontSize: 24))),
              ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 1,
                    color: Colors.grey.shade100,
                  );
                },
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: _list.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = _list[index];

                  return Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.black,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 0,
                          child: Container(
                            height: 50,
                            width: 50,
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
