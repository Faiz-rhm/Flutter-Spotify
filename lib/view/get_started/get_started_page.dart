import 'package:flutter/material.dart';
import 'package:spotify/constants/colors.dart';
import 'package:spotify/view/login/login_page.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/getStarted.png'),
            fit: BoxFit.cover
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('A digital music, podcast, and video service that gives you access to millions of songs and other content from creators all over the world.',
              style: TextStyle(color: ColorConstants.starterWhite, fontSize: 17, fontWeight: FontWeight.w600, ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32,),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(31)),
              height: 58,
              color: ColorConstants.primaryColor,
              onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage())),
              child: const Text('Get Started', style: TextStyle(color: Colors.white, fontSize: 18),) ,
            ),
            const SizedBox(height: 32,)
          ],
        ),
      ),
    );
  }
}
