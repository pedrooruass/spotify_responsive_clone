import 'package:flutter/material.dart';
import 'package:spotify_responsive_clone/resources/colors.dart';
import 'package:spotify_responsive_clone/ui/features/home_page/home_page.dart';

class PageViewSwitcher extends StatefulWidget {
  const PageViewSwitcher({Key? key}) : super(key: key);

  @override
  State<PageViewSwitcher> createState() => _PageViewSwitcherState();
}

class _PageViewSwitcherState extends State<PageViewSwitcher> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    final PageController controller = PageController(initialPage: 0);
    final scaffoldKey = GlobalKey<ScaffoldState>();
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          center: Alignment.topLeft,
          radius: 0.7,
          colors: [
            backgroundColor2,
            backgroundColor1,
          ],
        ),
      ),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.transparent,
        extendBody: true,
        body: PageView(
          controller: controller,
          children: const [
            HomeBody(),
            Center(
              child: Text('test2'),
            ),
            Center(
              child: Text('test3'),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
              controller.jumpToPage(index);
            });
          },
          currentIndex: currentIndex,
          elevation: 0,
          backgroundColor: Colors.transparent,
          selectedItemColor: primaryFontColor,
          unselectedItemColor: secondaryFontColor,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
              icon: Icon(Icons.my_library_music),
              label: 'Your Library',
            ),
          ],
        ),
      ),
    );
  }
}
