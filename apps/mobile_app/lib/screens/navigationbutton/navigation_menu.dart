// lib/screens/navigationbutton/navigation_menu.dart

// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:core/core.dart';
import 'package:mobile_app/screens/app/coach/athlete/athlete_list_screen.dart';
import 'package:mobile_app/screens/app/coach/coach_detail_screen.dart';
import 'package:mobile_app/screens/app/coach/coach_home_screen.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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

  late final List<GlobalKey<NavigatorState>> _navigatorKeys;
  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _navigatorKeys = List.generate(3, (_) => GlobalKey<NavigatorState>());
    _screens = _buildScreens();
  }

  List<Widget> _buildScreens() {
    return [
      _buildNavigator(
        key: _navigatorKeys[0],
        initialRoute: CoachHomeScreen(sportId: widget.sportId,coachId: widget.coachId,),
      ),
      // ✅ TỐI ƯU HÓA: Cung cấp BLoC ở cấp cao hơn cho các màn hình con sử dụng
      BlocProvider(
        create:
            (context) => CoachAthleteBloc(
              coachAthleteRepository: context.read<CoachAthleteRepository>(),
              athleteRepository: context.read<AthleteRepository>(),
              userRepository: context.read<UserRepository>(),
              sportRepository: context.read<SportRepository>(),
            )..add(
              CoachAthleteEvent.getAllByCoachId(widget.coachId),
            ), // Tải dữ liệu ngay khi tạo BLoC
        child: _buildNavigator(
          key: _navigatorKeys[1],
          initialRoute: AthleteListScreen(coachId: widget.coachId),
        ),
      ),
      _buildNavigator(
        key: _navigatorKeys[2],
        initialRoute: CoachDetailScreen(
          coachId: widget.coachId,
          sportId: widget.sportId,
        ),
      ),
    ];
  }

  Widget _buildNavigator({
    required GlobalKey<NavigatorState> key,
    required Widget initialRoute,
  }) {
    return Navigator(
      key: key,
      onGenerateRoute:
          (settings) => MaterialPageRoute(
            builder: (context) => initialRoute,
            settings: settings,
          ),
    );
  }

  void _onItemTapped(int index) {
    if (_selectedIndex == index) {
      _navigatorKeys[index].currentState?.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  Future<bool> _onWillPop() async {
    final navigator = _navigatorKeys[_selectedIndex].currentState;
    if (navigator != null && navigator.canPop()) {
      navigator.pop();
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) return;
        final willPop = await _onWillPop();
        if (willPop && mounted) {
          Navigator.of(context).pop();
        }
      },
      child: Scaffold(
        body: IndexedStack(index: _selectedIndex, children: _screens),
        bottomNavigationBar: _buildBottomNavigationBar(),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1)),
        ],
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
          child: GNav(
            rippleColor: theme.colorScheme.primary.withOpacity(0.1),
            hoverColor: theme.colorScheme.primary.withOpacity(0.05),
            gap: 8,
            activeColor: Colors.white,
            iconSize: 24,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 400),
            tabBackgroundColor: theme.colorScheme.primary,
            color: theme.colorScheme.onSurface.withOpacity(0.6),
            tabs: const [
              GButton(icon: Icons.home_rounded, text: 'Trang chủ'),
              GButton(icon: Icons.format_list_bulleted_rounded, text: 'VĐV'),
              GButton(icon: Icons.person_rounded, text: 'Tài khoản'),
            ],
            selectedIndex: _selectedIndex,
            onTabChange: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
