import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:neryad_tv/app_routes.dart';

void main() {
  runApp(const ProviderScope(child: NeryadTVApp()));
}

class NeryadTVApp extends StatelessWidget {
  const NeryadTVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routeInformationProvider: AppRoutes.router.routeInformationProvider,
      routeInformationParser: AppRoutes.router.routeInformationParser,
      routerDelegate: AppRoutes.router.routerDelegate,
    );
  }
}

