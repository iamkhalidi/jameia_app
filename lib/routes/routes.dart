import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:jameia_app/core/widgets/my_nav_bar.dart';
import 'package:jameia_app/features/groups_feature/view/groups_screen.dart';
import 'package:jameia_app/features/payments/view/payments_screen.dart';
import 'package:jameia_app/features/profile/view/profile_screen.dart';



class AppRoutes {


  static List<GetPage> routes = [
    GetPage(name: navBar, page: ()=> MyNavBar()),
    GetPage(name: homeScreen, page: ()=> GroupsScreen()),
    GetPage(name: groupsScreen, page: ()=> GroupsScreen()),
    GetPage(name: paymentsScreen, page: ()=> PaymentsScreen()),
    GetPage(name: profileScreen, page: ()=> ProfileScreen()),
  ];

  static String getNavBar() => navBar;
  static String getHome() => homeScreen;
  static String getGroups() => groupsScreen;
  static String getPayments() => paymentsScreen;
  static String getProfile() => profileScreen;


  static String navBar = '/';
  static String homeScreen = '/home';
  static String groupsScreen = '/groups';
  static String paymentsScreen = '/payments';
  static String profileScreen = '/profile';

}