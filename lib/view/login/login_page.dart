
import 'package:flutter/material.dart';
import 'package:spotify/constants/colors.dart';
import 'package:spotify/view/tab/tap.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SizedBox(
          height: height,
          child: Stack(
            children: [
              Container(
                height: height / 2,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstants.primaryColor,
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60),
                  )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 70,
                      child: Image.asset('assets/images/logo.png')),
                    const SizedBox(height: 20,),
                    const Text('MIllions of songs, free on spotify', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600, fontFamily: 'Roboto', fontStyle: FontStyle.normal),)
                  ],
                ),
              ),
              SingleChildScrollView(
                child: SizedBox(
                  height: height,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
                        height: height / 1.9,
                        margin: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(32)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text('Login Account', style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
                            const SizedBox(height: 22,),
                            SizedBox(
                              height: 40,
                              child: Input(hint: 'Email or Username', icon: Icons.email_outlined),
                            ),
                            const SizedBox( height:16),
                            SizedBox(
                              height: 40,
                              child: Input(hint: 'Password', icon: Icons.visibility_outlined),
                            ),
                            SwitchListTile.adaptive(
                              activeColor: ColorConstants.primaryColor,
                              value: rememberMe,
                              onChanged: ((bool value) {
                                setState(() {
                                  rememberMe = value;
                                });
                              }),
                              contentPadding: const EdgeInsets.all(0),
                              title: Text('Remember me', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorConstants.starterWhite)),
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(31)),
                              height: 40,
                              color: ColorConstants.primaryColor,
                              onPressed: () => Navigator.push(context , MaterialPageRoute(builder: (context) => const Tabs())),
                              child: const Text('LOG IN', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w700),) ,
                            ),
                            const SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 1,
                                    height: 1,
                                    color: ColorConstants.starterWhite,
                                  ),
                                ),
                                const SizedBox(width: 12,),
                                Text('or', style: TextStyle(color: ColorConstants.starterWhite, fontSize: 13, fontWeight: FontWeight.w700)),
                                const SizedBox(width: 12,),
                                Expanded(
                                  child: Divider(
                                    thickness: 1,
                                    height: 1,
                                    color: ColorConstants.starterWhite,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 40,
                                  child: Image.asset('assets/images/google+.png')),
                                const SizedBox(width: 16,),
                                SizedBox(
                                  height: 40,
                                  child: Image.asset('assets/images/facebook.png')),
                              ],
                            ),
                            const SizedBox(height: 16,),
                            Text('Forget password?',
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: ColorConstants.starterWhite),
                              textAlign: TextAlign.center,),
                          ],
                        ),
                      ),
                      const SizedBox(height: 16,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Don’t have an account?', style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),),
                          const SizedBox(width: 20,),
                          Text('Sign up now', style: TextStyle(color: ColorConstants.primaryColor, fontWeight: FontWeight.w700),)
                        ],
                      ),
                      const SizedBox(height: 44,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class Input extends StatelessWidget {
  Input({
    Key? key, required this.hint, required this.icon,
  }) : super(key: key);

  String hint;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: hint,
        labelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(26),
          borderSide: BorderSide(color: ColorConstants.starterWhite)
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorConstants.primaryColor ),
          borderRadius: const BorderRadius.all(Radius.circular(26)),
        ),
        suffixIcon: Icon(icon)
      ),
    );
  }
}
