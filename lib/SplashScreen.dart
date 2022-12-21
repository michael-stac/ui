import 'package:flutter/material.dart';

import 'Screens/Onboarding/intros.dart';
import 'Utils/router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
     body: const Center(
       child: Text("Welcome", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 28),),
     ),
    );
  }

  void navigate() {

    Future.delayed(const Duration(seconds: 2), () {
      nextPageAndRemovePrevious(context, page:  Intro());


    });
  }
}
