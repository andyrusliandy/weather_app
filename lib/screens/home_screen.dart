import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '/providers/navigation_provider.dart';
import '/screens/forecast_report_screen.dart';
import '/screens/search_screen.dart';
import 'weather_screen/weather_screen.dart';
import '/constants/app_colors.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentPageIndex = ref.watch(navigationIndexProvider);

    final screens = const [
      WeatherScreen(),
      SearchScreen(),
      ForecastReportScreen(),
    ];

    return Scaffold(
      body: screens[currentPageIndex],
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          backgroundColor: AppColors.secondaryBlack,
        ),
        child: NavigationBar(
          selectedIndex: currentPageIndex,
          labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          indicatorColor: Colors.transparent,
          onDestinationSelected: (index) {
            ref.read(navigationIndexProvider.notifier).state = index;
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined, color: Colors.white),
              selectedIcon: Icon(Icons.home, color: Colors.white),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.search_outlined, color: Colors.white),
              selectedIcon: Icon(Icons.search, color: Colors.white),
              label: '',
            ),
            NavigationDestination(
              icon: Icon(Icons.wb_sunny_outlined, color: Colors.white),
              selectedIcon: Icon(Icons.wb_sunny, color: Colors.white),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
