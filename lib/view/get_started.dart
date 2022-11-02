import 'package:flutter/material.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/getStarted.png'),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text('A digital music, podcast, and video service that gives you access to millions of songs and other content from creators all over the world.',
            style: TextStyle(color: Colors.white70, fontSize: 14, fontWeight: FontWeight.w600, ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16,),
          MaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(31)),
            height: 58,
            color: Colors.green,
            onPressed: () {},
            child: const Text('Get Started', style: TextStyle(color: Colors.white, fontSize: 18),) ,
          ),
        ],
      ),
    );
  }
}
