import 'package:app/routing/app_routing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

enum RootTab {
  home,
  inquiry,
  setting;
}

class RootPage extends HookWidget {
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
            HomeRoute().push(context);
          } else if (index == RootTab.inquiry.index) {
            InquiryRoute().push(context);
          } else if (index == RootTab.setting.index) {
            SettingRoute().push(context);
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
                Icons.info,
              ),
              label: 'Inquiry'),
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.account_circle,
              ),
              label: 'Setting'),
        ],
      ),
    );
  }
}
