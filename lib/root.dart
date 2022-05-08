import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telewebion/screen/home.dart';
import 'package:telewebion/screen/profile.dart';
import 'package:telewebion/screen/search.dart';
import 'package:telewebion/screen/streaming.dart';
import 'package:telewebion/them_color.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  State<RootScreen> createState() => _RootScreenState();
}

const int homeIndex = 0;
const int streamIndex = 1;
const int searchIndex = 2;
const int archiveIndex = 3;
const int profileIndex = 4;

class _RootScreenState extends State<RootScreen> {
  int selectedIndex = homeIndex;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: [
          Positioned.fill(
            child: IndexedStack(
              index: selectedIndex,
              children: const [
                HomeScreen(),
                StreemScreen(),
                SearchScreen(),
                ArchiveScreen(),
                ProfileScreen()
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: _BottomNavigationBar(
              selectedIndex: selectedIndex,
              onSelectedTab: (int index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
        ]),
      ),
    );
  }
}

class _BottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onSelectedTab;

  const _BottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onSelectedTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      color: DarkThemColor.blackColor,
      height: 60,
      child: Row(
        children: [
          _NavigationItem(
            onTap: () {
              onSelectedTab(homeIndex);
            },
            isActive: selectedIndex == homeIndex ? true : false,
            themeData: themeData,
            activeIcon: const Icon(
              CupertinoIcons.house_alt_fill,
              size: 20,
            ),
            unActiveIcon: Icon(
              CupertinoIcons.house_alt,
              size: 20,
              color: Colors.white.withOpacity(0.5),
            ),
            lable: 'خانه',
          ),
          _NavigationItem(
            onTap: () {
              onSelectedTab(streamIndex);
            },
            isActive: selectedIndex == streamIndex ? true : false,
            themeData: themeData,
            activeIcon: const Icon(
              CupertinoIcons.play_rectangle_fill,
              size: 20,
            ),
            unActiveIcon: Icon(
              CupertinoIcons.play_rectangle,
              color: Colors.white.withOpacity(0.5),
              size: 20,
            ),
            lable: 'پخش زنده',
          ),
          _NavigationItem(
            onTap: () {
              onSelectedTab(searchIndex);
            },
            isActive: selectedIndex == searchIndex ? true : false,
            themeData: themeData,
            activeIcon: const Icon(
              CupertinoIcons.search,
              size: 20,
            ),
            unActiveIcon: Icon(
              CupertinoIcons.search,
              color: Colors.white.withOpacity(0.5),
              size: 20,
            ),
            lable: 'جستجو',
          ),
          _NavigationItem(
            onTap: () {
              onSelectedTab(archiveIndex);
            },
            isActive: selectedIndex == archiveIndex ? true : false,
            themeData: themeData,
            activeIcon: const Icon(
              CupertinoIcons.archivebox_fill,
              size: 20,
            ),
            unActiveIcon: Icon(
              CupertinoIcons.archivebox,
              size: 20,
              color: Colors.white.withOpacity(0.5),
            ),
            lable: 'آرشیو',
          ),
          _NavigationItem(
            onTap: () {
              onSelectedTab(profileIndex);
            },
            isActive: selectedIndex == profileIndex ? true : false,
            themeData: themeData,
            activeIcon: const Icon(
              CupertinoIcons.person_fill,
              size: 20,
            ),
            unActiveIcon: Icon(
              CupertinoIcons.person,
              size: 20,
              color: Colors.white.withOpacity(0.5),
            ),
            lable: 'پروفایل',
          ),
        ],
      ),
    );
  }
}

class _NavigationItem extends StatelessWidget {
  final String lable;
  final Icon activeIcon;
  final Icon unActiveIcon;
  final bool isActive;
  final Function() onTap;
  const _NavigationItem({
    Key? key,
    required this.themeData,
    required this.lable,
    required this.activeIcon,
    required this.unActiveIcon,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            isActive ? activeIcon : unActiveIcon,
            Text(
              lable,
              style: isActive
                  ? themeData.textTheme.bodyText1
                  : themeData.textTheme.bodyText1!
                      .copyWith(color: Colors.white.withOpacity(0.5)),
            ),
          ],
        ),
      ),
    );
  }
}



class ArchiveScreen extends StatelessWidget {
  const ArchiveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('آرشیو'),
      ),
    );
  }
}
