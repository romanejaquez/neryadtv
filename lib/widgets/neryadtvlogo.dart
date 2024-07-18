import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class NeryadTVLogo extends StatefulWidget {
  const NeryadTVLogo({super.key});

  @override
  State<NeryadTVLogo> createState() => _NeryadTVLogoState();
}

class _NeryadTVLogoState extends State<NeryadTVLogo> {

  late RiveAnimation anim;
  late StateMachineController ctrl;

  @override 
  void initState() {
    super.initState();

    anim = RiveAnimation.asset(
      './assets/animations/neryadtv.riv',
      artboard: 'neryadtvanimation',
      fit: BoxFit.contain,
      onInit: onRiveInit,
    );
  } 

  void onRiveInit(Artboard ab) {
    ctrl = StateMachineController.fromArtboard(ab, 'neryadtvanimation')!;
    ab.addController(ctrl);
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.sizeOf(context).width / 2,
      ),
      child: anim
    );
  }
}