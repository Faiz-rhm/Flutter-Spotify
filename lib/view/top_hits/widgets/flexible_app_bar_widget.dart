import 'package:flutter/material.dart';

class FlexibleSpaceBarWidget extends StatelessWidget {
  const FlexibleSpaceBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      // collapseMode: CollapseMode.parallax,
      background: Container(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 32),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/topHit.png'),
            fit: BoxFit.cover,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Todays'.toUpperCase(), style: const TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, fontFamily: 'Inter')),
            Text('Top Hit'.toUpperCase(), style: const TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.w700, fontStyle: FontStyle.normal, fontFamily: 'Inter')),
            const SizedBox(height: 8,),
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
    );
  }
}
