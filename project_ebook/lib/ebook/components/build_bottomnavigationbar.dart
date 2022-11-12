import 'package:flutter/material.dart';
import 'package:project_ebook/common/const.dart';

class BuildBottomNavigationBar extends StatefulWidget {
  const BuildBottomNavigationBar({super.key});

  @override
  State<BuildBottomNavigationBar> createState() =>
      _BuildBottomNavigationBarState();
}

class _BuildBottomNavigationBarState extends State<BuildBottomNavigationBar> {
  final items = <BottomNavigationBarItem>[];
  int currentIndex = 0;
  @override
  void initState() {
    items.addAll([
      const BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Trang Chủ',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.auto_awesome_mosaic),
        label: 'Thể loại',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.menu_book_sharp),
        label: 'Thư viện',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'Cài đặt',
      ),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: items,
      onTap: (value) {
        setState(() {
          currentIndex = value;
        });
      },
      currentIndex: currentIndex,
      selectedItemColor: kPrimaryColorIconsEbook,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
    );
  }
}
