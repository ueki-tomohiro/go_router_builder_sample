import 'package:app/routing/old_app_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

enum RootTab {
  home,
  inquiry,
  setting;
}

class RootPage extends StatelessWidget {
  final Widget page;
  const RootPage({
    super.key,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    final tabIndex = useState(0);

    return Scaffold(
      body: page,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: tabIndex.value,
        onTap: (index) {
          tabIndex.value = index;
          if (index == RootTab.home.index) {
            context.pushNamed(AppRouteKeys.home);
          } else if (index == RootTab.inquiry.index) {
            context.pushNamed(AppRouteKeys.inquiry);
          } else if (index == RootTab.setting.index) {
            context.pushNamed(AppRouteKeys.setting);
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.calendar_month,
              ),
              label: 'Inquiry'),
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.account_box,
              ),
              label: 'Setting'),
        ],
      ),
    );
  }
}
