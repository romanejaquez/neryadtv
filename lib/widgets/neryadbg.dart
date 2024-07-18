import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class NeryadBG extends StatefulWidget {
  const NeryadBG({super.key});

  @override
  State<NeryadBG> createState() => _NeryadBGState();
}

class _NeryadBGState extends State<NeryadBG> {

  late RiveAnimation anim;
  late StateMachineController ctrl;

  @override 
  void initState() {
    super.initState();

    anim = RiveAnimation.asset(
      './assets/animations/neryadtv.riv',
      artboard: 'bg',
      fit: BoxFit.fill,
      onInit: onRiveInit,
    );
  } 

  void onRiveInit(Artboard ab) {
    ctrl = StateMachineController.fromArtboard(ab, 'bg')!;
    ab.addController(ctrl);
  }

  @override
  Widget build(BuildContext context) {
    return anim;
  }
}