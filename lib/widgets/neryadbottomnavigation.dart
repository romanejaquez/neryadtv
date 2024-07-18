import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neryad_tv/providers/neryad_providers.dart';
import 'package:neryad_tv/widgets/neryadicon.dart';

class NeryadBottomNavigation extends ConsumerWidget {
  const NeryadBottomNavigation({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final navItems = ref.watch(neryadNavVMProvider);

    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          navItems.length, (index) {
            final navItem = navItems[index];

            return IconButton(
              onPressed: () {
                ref.read(neryadNavVMProvider.notifier).selectedNavItem(navItem);
              }, 
              icon: NeryadIcon(
                icon: navItem.icon, 
                selected: navItem.selected
              ));
          }).animate(
            interval: 0.125.seconds,
          ).slideY(
            begin: 3, end: 0,
            curve: Curves.easeInOut,
            duration: 1.seconds,
          ),
      )
    );
  }
}