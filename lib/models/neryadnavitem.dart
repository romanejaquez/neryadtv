import 'package:neryad_tv/enums.dart';

class NeryadNavItem {
  final NeryadIcons icon;
  final bool selected;

  const NeryadNavItem({
    required this.icon,
    this.selected = false,
  });

  NeryadNavItem copyWith({
    NeryadIcons? icon,
    bool? selected,
  }) {
    return NeryadNavItem(
      icon: icon ?? this.icon, 
      selected: selected ?? this.selected,
    );
  }
}