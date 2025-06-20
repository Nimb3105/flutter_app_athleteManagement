import 'package:flutter/material.dart';
import 'package:mobile_app/screens/app/coach/athleteFromCoach/athlete_list_screen.dart';
import 'package:mobile_app/screens/app/coach/coach_home_screen.dart'; // Đảm bảo đã import

class NavigationMenu extends StatefulWidget {
  final String coachId;
  const NavigationMenu({super.key, required this.coachId});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;
  // Sử dụng GlobalKey cho Navigator của từng tab để có thể push/pop route
  final List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(), // Cho tab Trang chủ
    GlobalKey<NavigatorState>(), // Cho tab Danh sách VĐV
    GlobalKey<NavigatorState>(), // Cho tab Tài khoản
  ];

  // Danh sách các màn hình gốc cho từng tab
  List<Widget> get _widgetOptions => [
        // Tab 0: Trang chủ
        Navigator(
          key: _navigatorKeys[0],
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (context) => CoachHomeScreen(),
            );
          },
        ),
        // Tab 1: Danh sách VĐV
        Navigator(
          key: _navigatorKeys[1],
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (context) => AthleteListScreen(coachId: widget.coachId),
            );
          },
        ),
        // Tab 2: Tài khoản
        Navigator(
          key: _navigatorKeys[2],
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (context) => const Center(child: Text('Thông tin huấn luyện viên', style: TextStyle(fontSize: 30))),
            );
          },
        ),
      ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Hàm để xử lý nút back của hệ thống
  Future<bool> _onWillPop() async {
    final bool? maybePop = await _navigatorKeys[_selectedIndex].currentState?.maybePop();
    if (maybePop == false) {
      // Nếu không thể pop từ Navigator hiện tại, cho phép Navigator ngoài cùng pop
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return PopScope( // Use PopScope for back button handling
      canPop: false, // Prevent the main navigator from popping directly
      // ignore: deprecated_member_use
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        }
        final NavigatorState? navigator = _navigatorKeys[_selectedIndex].currentState;
        if (navigator != null && navigator.canPop()) {
          navigator.pop();
        } else {
          // If at the root of the nested navigator, then allow the main app to pop
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).pop();
          }
          // Or, if this is the root of the entire app, exit the app
          // For Android: SystemNavigator.pop();
        }
      },
      child: Scaffold(
        body: IndexedStack( // Sử dụng IndexedStack để giữ trạng thái của các tab
          index: _selectedIndex,
          children: _widgetOptions,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Trang chủ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Danh sách VĐV',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Tài khoản',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.grey,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}