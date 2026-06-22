import 'package:e_commerce/features/home/presentation/views/widgets/custom_bottom_navigation_bar.dart';
import 'package:e_commerce/features/home/presentation/views/widgets/home_view.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  static const routeName = 'main_view';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: SafeArea(child: HomeView()),
    );
  }
}
