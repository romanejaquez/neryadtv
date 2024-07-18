import 'package:flutter/material.dart';
import 'package:neryad_tv/widgets/neryadbottomnavigation.dart';

class LandingPage extends StatelessWidget {

  static const String route = '/landing';
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Landing'),
      ),
      bottomNavigationBar: NeryadBottomNavigation(),
    );
  }
}