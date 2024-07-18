import 'package:flutter/material.dart';
import 'package:neryad_tv/enums.dart';
import 'package:rive/rive.dart';

class NeryadIcon extends StatefulWidget {

  final NeryadIcons icon;
  final bool selected;
  const NeryadIcon({
    super.key,
    required this.icon,
    required this.selected,  
  });

  @override
  State<NeryadIcon> createState() => _NeryadIconState();
}

class _NeryadIconState extends State<NeryadIcon> {

  late RiveAnimation anim;
  late StateMachineController ctrl;
  late SMIBool selectedInput;
  bool isInitialized = false;

  @override 
  void initState() {
    super.initState();

    anim = RiveAnimation.asset(
      './assets/animations/neryadtv.riv',
      artboard: widget.icon.name,
      fit: BoxFit.contain,
      onInit: onRiveInit,
    );
  } 

  void onRiveInit(Artboard ab) {
    ctrl = StateMachineController.fromArtboard(ab, widget.icon.name)!;
    ab.addController(ctrl);

    selectedInput = ctrl.findInput<bool>('selected') as SMIBool;

    setState(() {
      isInitialized = true;
    });
  }

  @override
  Widget build(BuildContext context) {

    if (isInitialized) {
      selectedInput.value = widget.selected;
    }

    return SizedBox(
      width: 40,
      height: 40,
      child: anim,
    );
  }
}