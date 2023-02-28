import 'package:flutter/material.dart';
import 'package:spotify/constants/colors.dart';
import 'package:spotify/data/data.dart';

class PlayListCard extends StatelessWidget {
  const PlayListCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: playList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, int index) {
        final play = playList[index];

        return Container(
          decoration: BoxDecoration(
            color: ColorConstants.cardBackGroundColor,
            borderRadius: BorderRadius.circular(10)
          ),
          padding: const EdgeInsets.only(top: 10,),
          margin: const EdgeInsets.all(4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Wrap(
                children: [
                  PlayListImage(image: play['image_1']),
                  PlayListImage(image: play['image_2']),
                  PlayListImage(image: play['image_3']),
                  PlayListImage(image: play['image_4']),
                ],
              ),
              const SizedBox(height: 4,),
              Text(play['title'], style: TextStyle(
                color: ColorConstants.starterWhite,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              )),
            ],
          ),
        );
      },
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
