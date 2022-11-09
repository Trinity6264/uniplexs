import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:uniplexs/app/app.gr.dart';
import 'package:uniplexs/constant/color_pallet.dart';
import 'package:uniplexs/views/dashboard/home/home_view.dart';
import 'package:uniplexs/views/dashboard/movie_wrapper/movie_wrapper.dart';
import 'package:uniplexs/views/dashboard/profile/profile_view.dart';
import 'package:uniplexs/views/dashboard/tickets/tickets_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});
  static int currentScreen = 0;

  static const _views = [
    HomeView(),
    MovieWrapper(),
    TicketView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeViewRoute(),
        MovieWrapperRoute(),
        TicketViewRoute(),
        ProfileViewRoute(),
      ],
      curve: Curves.ease,
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);

        return FadeTransition(
          opacity: animation,
          child: Scaffold(
            key: const PageStorageKey('dashboard'),
            backgroundColor: backgroundColor,
            body: SafeArea(
              child: child,
            ),
            bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: whiteColor.withOpacity(0.6),
              backgroundColor: backgroundColor,
              fixedColor: primaryColor,
              currentIndex: tabsRouter.activeIndex,
              onTap: (index) {
                tabsRouter.setActiveIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                  tooltip: 'Home Page',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_movies_outlined),
                  label: 'Movies',
                  tooltip: 'Movies Page',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart_rounded),
                  label: 'Tickets',
                  tooltip: 'Tickets Page',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_outlined),
                  label: 'Profile',
                  tooltip: 'Profile Page',
                ),
              ],
              type: BottomNavigationBarType.fixed,
            ),
          ),
        );
      },
    );
  }
}
