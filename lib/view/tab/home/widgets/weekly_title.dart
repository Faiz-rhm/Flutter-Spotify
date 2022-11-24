import 'package:flutter/material.dart';
import 'package:spotify/constants/colors.dart';

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
