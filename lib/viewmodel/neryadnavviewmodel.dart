import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neryad_tv/models/neryadnavitem.dart';

class NeryadNavViewmodel extends StateNotifier<List<NeryadNavItem>> {
  
  NeryadNavViewmodel(super.state);

  void selectedNavItem(NeryadNavItem selectedItem) {
    state = [
      for(var item in state)
        item.copyWith(selected: item.icon == selectedItem.icon)
    ];
  }

}