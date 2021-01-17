import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:guardian/ui/features/google_map/map_screen.dart';
import 'package:guardian/ui/features/home/home_page.dart';
import 'package:guardian/ui/features/sos_page/sos_page.dart';
import 'package:guardian/utils/my_colors.dart';

import 'navigation_container_controller.dart';

/// Top level navigation container class
/// This class is responsible for handling the [BottomNavigation] and [NavigationDrawer]
/// to show the appropriate screens
class NavigationContainer extends StatefulWidget {
  @override
  _NavigationContainerState createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {

  NavigationContainerController _controller = NavigationContainerController();

  @override
  Widget build(BuildContext context) {

    var wp = MediaQuery.of(context).size.width;

    return Container(
      color:  primary,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Obx(() => _getBody()),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/idea.svg",
                height:25,
                color: _getItemColor(0),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/sos.svg",
                height:25,
                color: _getItemColor(1),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/home.svg",
                height:25,
                color: _getItemColor(2),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/profile.svg",
                height:25,
                color: _getItemColor(3),
              ),
              label: '',
            ),
          ],
          currentIndex: _controller.selectedIndex.value,
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  /// Returns color of the selected item
  Color _getItemColor(int index){
    return _controller.selectedIndex.value == index ?
    accent :
    Colors.white;
  }

  void _onItemTapped(int index) {

    setState(() {
      _controller.selectedIndex.value = index;
    });
  }

  /// Callback functions for child Widgets to get access to drawer
  openMenuButton(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  Widget _getBody(){
    switch(_controller.selectedIndex.value){
      case 0: return HomePage();
      case 1: return SOSPage();
      case 2: return MapScreen();
      case 3: return MapScreen();
      default : return Container();
    }
  }

}
