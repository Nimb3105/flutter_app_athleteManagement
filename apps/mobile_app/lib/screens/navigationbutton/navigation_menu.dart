// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:mobile_app/screens/app/coach/athleteFromCoach/athlete_list_screen.dart';
import 'package:mobile_app/screens/app/coach/coach_home_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart'; // Import GNav

class NavigationMenu extends StatefulWidget {
  final String coachId;
  final String sportId;

  const NavigationMenu({
    super.key,
    required this.coachId,
    required this.sportId,
  });

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;

  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  List<Widget> get _widgetOptions => [
    Navigator(
      key: _navigatorKeys[0],
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => CoachHomeScreen(sportId: widget.sportId),
        );
      },
    ),
    Navigator(
      key: _navigatorKeys[1],
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => AthleteListScreen(coachId: widget.coachId),
        );
      },
    ),
    Navigator(
      key: _navigatorKeys[2],
      onGenerateRoute: (settings) {
        return MaterialPageRoute(
          builder:
              (context) => const Center(
                child: Text(
                  'Thông tin huấn luyện viên',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
        );
      },
    ),
  ];

  void _onItemTapped(int index) {
    if (_selectedIndex == index) {
      // Nếu người dùng nhấn vào tab đang hoạt động, pop về trang đầu của tab đó
      _navigatorKeys[index].currentState?.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) return;
        final navigator = _navigatorKeys[_selectedIndex].currentState;
        if (navigator != null && navigator.canPop()) {
          navigator.pop();
        } else {
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).pop();
          }
        }
      },
      child: Scaffold(
        body: IndexedStack(index: _selectedIndex, children: _widgetOptions),
        bottomNavigationBar: Container(
          // Thêm shadow và background cho thanh điều hướng
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1)),
            ],
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 8,
              ),
              child: GNav(
                rippleColor: theme.colorScheme.primary.withOpacity(0.1),
                hoverColor: theme.colorScheme.primary.withOpacity(0.05),
                gap: 8,
                activeColor: Colors.white,
                iconSize: 24,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
                duration: const Duration(milliseconds: 400),
                tabBackgroundColor: theme.colorScheme.primary,
                color: theme.colorScheme.onSurface.withOpacity(0.6),
                tabs: const [
                  GButton(icon: Icons.home_rounded, text: 'Trang chủ'),
                  GButton(
                    icon: Icons.format_list_bulleted_rounded,
                    text: 'VĐV',
                  ),
                  GButton(icon: Icons.person_rounded, text: 'Tài khoản'),
                ],
                selectedIndex: _selectedIndex,
                onTabChange: _onItemTapped,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
