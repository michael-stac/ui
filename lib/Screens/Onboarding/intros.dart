import 'package:flutter/material.dart';

import '../../Utils/router.dart';
import '../Profile/profile.dart';
import 'onboarding.dart';
import 'pages.dart';

class Intro extends StatefulWidget {
  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final List<Pages> boardingPages = <Pages>[
    Pages(
      title: 'A plastic-free environment',
      description:
      "Recycle your plastics with iRecycle and keep your environment plastic-free",
    ),
    Pages(
      title: 'Recycle and earn points',
      description: 'Keeping your environment plastic-free and earn points ',

    ),
    Pages(
      title: 'Redeem your points',
      description: "Redeem your points earned and purchase items you may need",

    ),
  ];
  @override
  Widget build(BuildContext context) {
    return OnBoardingPage(
      boardingPages,
      appName: '',
      skip: () {
        nextPageAndRemovePrevious(context, page: const ProfilePage());
      },
      continueProcess: () {
        nextPageAndRemovePrevious(context, page: const ProfilePage());
      },
    );
  }
}
