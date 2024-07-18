import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neryad_tv/pages/landing_page.dart';
import 'package:neryad_tv/widgets/neryadbg.dart';
import 'package:neryad_tv/widgets/neryadtvlogo.dart';

class SplashPage extends StatelessWidget {

  static const String route = '/';

  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).go(LandingPage.route);
    });

    return const Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          NeryadBG(),
          Center(
            child: NeryadTVLogo(),
          )
        ],
      )
    );
  }
}