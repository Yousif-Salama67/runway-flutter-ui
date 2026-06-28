import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:runway/pages/home_page.dart';
import 'package:runway/widgets/animation_line.dart';

// ignore: must_be_immutable
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1000), () {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) => HomePage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: Image(image: AssetImage("assets/images/logo/Runway.png")),
          ),
          Gap(7),

          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 120),
          //   child: Image(image: AssetImage("assets/images/logo/RuneayDash.png")),
          // ),
          // ClipRect(
          //   child: AnimatedAlign(
          //     duration: const Duration(milliseconds: 700),
          //     alignment: Alignment.centerRight,
          //     widthFactor: hideLine ? 0 : 1,
          //     child: Image.asset('assets/images/logo/RuneayDash.png', width: 120),

          //   ),
          // ),
          AnimationLine(),
        ],
      ),
    );
  }
}
