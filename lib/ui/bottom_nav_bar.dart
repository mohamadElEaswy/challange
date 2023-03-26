import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import 'home_screen.dart';

Color disActiveColor = Colors.grey.shade500;
const Color activeColor = Colors.white;
const TextStyle globalStaticText = TextStyle(color: activeColor);

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  late PersistentTabController _controller;

  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 0);
    super.initState();
  }

  List<Widget> _buildScreens() {
    return [
      const MyHomePage(),
      Container(),
      Container(),
      Container(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.home,
          // color: _controller.index == 0 ? activeColor : disActiveColor,
        ),
        title: "Home",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: disActiveColor,
        textStyle: globalStaticText,
        activeColorSecondary: activeColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.search,
          // color: _controller.index == 1 ? activeColor : disActiveColor,
        ),
        title: "Explore",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        textStyle: globalStaticText,
        activeColorSecondary: activeColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.bookmark,
          // color: _controller.index == 2 ? activeColor : disActiveColor,
        ),
        title: "Bookmarks",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        textStyle: globalStaticText,
        activeColorSecondary: activeColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          CupertinoIcons.person,
          // color: _controller.index == 3 ? activeColor : disActiveColor,
        ),
        title: "Profile",
        activeColorPrimary: CupertinoColors.activeBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
        textStyle: globalStaticText,
        activeColorSecondary: activeColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style7, // Choose the nav bar style with this property.
    );
  }
}
