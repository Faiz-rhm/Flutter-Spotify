import 'package:flutter/material.dart';
import 'package:spotify/constants/colors.dart';
import 'package:spotify/view/data/data.dart';

class PlayListCard extends StatelessWidget {
  const PlayListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 410,
      child: GridView.builder(
        shrinkWrap: false,
        itemCount: playList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, int index) {
          final playL = playList[index];

          return Container(
            decoration: BoxDecoration(
              color: ColorConstants.cardBackGroundColor,
              borderRadius: BorderRadius.circular(10)
            ),
            padding: const EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 0),
            margin: const EdgeInsets.all(4),
            // width: 155,
            height: 170,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  children: [
                    PlayListImage(image: playL['image_1']),
                    PlayListImage(image: playL['image_2']),
                    PlayListImage(image: playL['image_3']),
                    PlayListImage(image: playL['image_4']),
                  ],
                ),
                const SizedBox(height: 12,),
                Text(playL['title'], style: TextStyle(
                  color: ColorConstants.starterWhite,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                )),
              ],
            ),
          );
      }),
    );
  }
}

class PlayListImage extends StatelessWidget {
  const PlayListImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      width: 75,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
