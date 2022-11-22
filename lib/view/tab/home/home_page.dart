import 'package:flutter/material.dart';
import 'package:spotify/constants/colors.dart';
import 'package:spotify/view/data/data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 32,),
            WelcomeTitle(),
            SizedBox(height: 32,),
            WeeklyTitle(),
            SizedBox(height: 24,),
            WeeklyMusicList(),
            SizedBox(height: 24,),
            Title(title: 'Your Top Mixes'),
            SizedBox(height: 24,),
            TopMusic(),
            Title(title: 'Suggested artists'),
            SizedBox(height: 24,),
            Artist()
          ],
        ),
      ),
    );
  }
}

class Artist extends StatelessWidget {
  const Artist({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: artists.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int index) {
          final artist = artists[index];

          return Container(
            height: 140,
            width: 140,
            margin: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: AssetImage(artist)
              )
            ),
          );
      }),
    );
  }
}

class TopMusic extends StatelessWidget {
  const TopMusic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: topMixes.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int index) {
          final topMix = topMixes[index];

          return SizedBox(
            width: 180,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
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
                          decoration: const BoxDecoration(
                            color: Colors.red
                          ),
                        ),
                        const SizedBox(height: 12,),
                        Container(
                          height: 8,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.only(
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
                  const SizedBox(height: 8,),
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

class Title extends StatelessWidget {
  const Title({
    Key? key, required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: const TextStyle(
      color: Colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w600
    ),);
  }
}

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

class WeeklyTitle extends StatelessWidget {
  const WeeklyTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.electric_bolt_outlined, color: ColorConstants.primaryColor,),
        const SizedBox(width: 18,),
        RichText(
          text: TextSpan(
            text: 'Weakly ',
            style: TextStyle(color: ColorConstants.primaryColor, fontSize: 18, fontWeight: FontWeight.w600),
            children: const [
              TextSpan(
                text: ' Music',
                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600), ),
            ],
          ),
        ),
      ],
    );
  }
}

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Good Morning', style: TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal
        )),
        IconButton(
          icon: const Icon(Icons.more_vert, color: Colors.white,),
          onPressed: () {},
        )
      ],
    );
  }
}
