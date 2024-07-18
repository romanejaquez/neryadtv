import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neryad_tv/models/neryadnavitem.dart';
import 'package:neryad_tv/repositories/neryadnavrepository.dart';
import 'package:neryad_tv/viewmodel/neryadnavviewmodel.dart';

final neryadNavRepositoryProvider = Provider((ref) {
  return NeryadNavRepository();
});

final neryadNavVMProvider = StateNotifierProvider<NeryadNavViewmodel, List<NeryadNavItem>>((ref) {
  final navItems = ref.read(neryadNavRepositoryProvider).getNavItems();
  return NeryadNavViewmodel(navItems);
});