import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jameia_app/core/constants/constants.dart';
import 'package:jameia_app/core/controller/nav_bar_controller.dart';
import 'package:jameia_app/features/groups_feature/view/groups_screen.dart';
import 'package:jameia_app/features/home/view/home_screen.dart';
import 'package:jameia_app/features/payments/view/payments_screen.dart';
import 'package:jameia_app/features/profile/view/profile_screen.dart';

class MyNavBar extends StatelessWidget {
   MyNavBar({super.key});
  final controller = Get.put(NavBarController());


  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavBarController>(
      builder: (context) {
        return Scaffold(
          backgroundColor: Colors.grey,
            body: IndexedStack(
              index: controller.tabIndex,
              children: const [HomeScreen(),PaymentsScreen(),GroupsScreen(),ProfileScreen()],
            ),

          bottomNavigationBar: BottomNavigationBar(
            iconSize: 30,
            selectedLabelStyle: AppConstants.navBarTextStyle,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xFFFBEC99),
            selectedItemColor: Color(0xFF3F7517),
            unselectedItemColor: Colors.grey.shade500,
            showUnselectedLabels: true,
            currentIndex: controller.tabIndex,
            onTap: controller.changeTabIndex,
            items: [
              _bottomBarItem(Icons.home, "الرئيسية"),
              _bottomBarItem(Icons.monetization_on, "المدفوعات"),
              _bottomBarItem(Icons.groups, "الجمعيات"),
              _bottomBarItem(Icons.person, "الشخصية"),
            ],
          ),
        );
      },
    );
  }
}


_bottomBarItem(IconData icon, String label){
  return BottomNavigationBarItem(icon: Icon(icon),label: label);
}
