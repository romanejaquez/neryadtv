import 'package:neryad_tv/enums.dart';
import 'package:neryad_tv/models/neryadnavitem.dart';

class NeryadNavRepository {

  List<NeryadNavItem> getNavItems() {
    return const [
      NeryadNavItem(
        icon: NeryadIcons.search,
        selected: true,
      ),
      NeryadNavItem(
        icon: NeryadIcons.users,
      ),
      NeryadNavItem(
        icon: NeryadIcons.programming,
      ),
      NeryadNavItem(
        icon: NeryadIcons.settings,
      )
    ];
  }
}