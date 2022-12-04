import 'package:flutter/material.dart';
import 'package:spotify/constants/colors.dart';
import 'package:spotify/data/data.dart';

class WeeklyMusicList extends StatelessWidget {
  const WeeklyMusicList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: slider.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int index) {
          final slid = slider[index];
        return Column(
          children: [
            Container(
              height: 125,
              width: 240,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
                image:  DecorationImage(
                  image: AssetImage(slid['image']),
                  fit: BoxFit.cover,
                )
              ),
            ),
            const SizedBox(height: 8,),
            Text(slid['title'], style: TextStyle(
              color: ColorConstants.starterWhite,
              fontSize: 11,
              fontWeight: FontWeight.w400,
            ))
          ],
        );
      }),
    );
  }
}

