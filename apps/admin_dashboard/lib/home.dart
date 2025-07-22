import 'package:admin_dashboard/athlete/athlete_management_page.dart';
import 'package:admin_dashboard/coach/coach_management_page.dart';
import 'package:admin_dashboard/overview_page.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Cập nhật danh sách các trang
  static const List<Widget> _pages = <Widget>[
    OverviewPage(),
    AthleteManagementPage(),
    CoachManagementPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trang quản trị'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Row(
        children: <Widget>[
          // Thanh điều hướng bên trái
          NavigationRail(
            selectedIndex: _selectedIndex,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            // Sử dụng extended = true để hiển thị cả icon và label khi có không gian
            extended: true,
            minExtendedWidth: 200, // Chiều rộng tối thiểu của menu
            leading: const FlutterLogo(size: 40),
            // Cập nhật các mục menu
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: Text('Trang chủ'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.directions_run_outlined),
                selectedIcon: Icon(Icons.directions_run),
                label: Text('Quản lý VĐV'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.sports_outlined),
                selectedIcon: Icon(Icons.sports),
                label: Text('Quản lý HLV'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // Nội dung chính của trang
          Expanded(
            child: _pages.elementAt(_selectedIndex),
          ),
        ],
      ),
    );
  }
}