import 'package:flutter/material.dart';
import 'package:spotify/constants/colors.dart';
import 'package:spotify/data/data.dart';
import 'package:spotify/view/top_hits/top_hits.dart';

class TopMusic extends StatelessWidget {
  const TopMusic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: topMixes.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int index) {
          final topMix = topMixes[index];

          return GestureDetector(
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const TopHits())),
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstants.cardBackGroundColor,
                borderRadius: BorderRadius.circular(10)
              ),
              padding: const EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 0),
              margin: const EdgeInsets.all(4),
              width: 160,
              height: 195,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 113,
                    width: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(topMix['image']),
                        fit: BoxFit.cover
                      )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 7,
                          height: 24,
                          decoration: BoxDecoration(
                            color: hexToColor(topMix['color'])
                          ),
                        ),
                        const SizedBox(height: 12,),
                        Container(
                          height: 8,
                          decoration: BoxDecoration(
                            color: hexToColor(topMix['color']),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            )
                          ),
                        ),
                      ],
                    )
                  ),
                  const SizedBox(height: 8,),
                  Text(topMix['title'], style: TextStyle(
                    color: ColorConstants.starterWhite,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  )),
                  const SizedBox(height: 2,),
                  Text(topMix['description'], style: TextStyle(
                    color: ColorConstants.starterWhite,
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                  ))
                ],
              ),
            ),
          );
      }),
    );
  }
}
