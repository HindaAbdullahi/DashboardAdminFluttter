// import 'package:flutter/material.dart';
// import 'package:dashboard1/constants/constants.dart';
// import 'package:dashboard1/screens/components/drawer_list_tile.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// class DrawerMenu extends StatelessWidget {
//   const DrawerMenu({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: ListView(
//         children: [
//           Container(
//             padding: EdgeInsets.all(appPadding),
//             child: Image.asset("assets/images/logowithtext.png"),
//           ),
           
//           DrawerListTile(
//               title: 'Dashboard',
//               svgSrc: 'assets/icons/Dashboard.svg',
//               tap: () {}),
//           DrawerListTile(
//               title: 'Guarantors',
//               svgSrc: 'assets/icons/BlogPost.svg',
            
//               tap: () {}),
//           DrawerListTile(
//               title: 'Message', svgSrc: 'assets/icons/Message.svg', tap: () {}),
//           DrawerListTile(
//               title: 'Statistics',
//               svgSrc: 'assets/icons/Statistics.svg',
//               tap: () {}),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: appPadding * 2),
//             child: Divider(
//               color: grey,
//               thickness: 0.2,
//             ),
//           ),

//           DrawerListTile(
//               title: 'Settings',
//               svgSrc: 'assets/icons/Setting.svg',
//               tap: () {}),
//           DrawerListTile(
//               title: 'Logout',
//               svgSrc: 'assets/icons/Logout.svg',
//               tap: () {}),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  _navigate(BuildContext context, String route) {
    Navigator.pushNamed(context, route);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Center(
        child: Container(
          child: ListView(
            children: [
             Container(
            padding: EdgeInsets.all(0.16),
            child: Image.asset("assets/images/logo (1).png"),
          ),
              // Container(
              //   color: Colors.blueGrey,
              //   height: MediaQuery.of(context).size.height * 0.2,
              //   padding: EdgeInsets.all(20),
              //   child: Center(
              //     child: ListTile(
              //       leading: Icon(
              //         Icons.person,
              //         size: 50,
              //         color: Colors.white,
              //       ),
              //       title: Text(
              //         "User Information",
              //         textAlign: TextAlign.center,
              //         style: TextStyle(
              //           fontSize: 20,
              //           color: Colors.white,
              //           fontFamily: "aerial",
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              _drawerItem(
                leadingIcon: Icons.house,
                titleText: 'Dashboard',
                route: '/',
              ),
              _drawerItem(
                leadingIcon: FontAwesomeIcons.peopleGroup,
                titleText: 'Guarantors',
                route: 'guarantors',
              ),
              _drawerItem(
                leadingIcon: FontAwesomeIcons.peopleGroup,
                titleText: 'Tenants',
                route: '/tenants',
              ),
              ExpansionTile(
                leading: Icon(Icons.apartment),
                title: Text('Manage apartments'),
                children: [
                  Divider(
                    thickness: 1,
                  ),
                  _drawerItem(
                      leadingIcon: Icons.apartment,
                      titleText: 'Apartments',
                      route: 'apartments'),
                  Divider(
                    thickness: 1,
                  ),
                  _drawerItem(
                      leadingIcon: Icons.house_siding,
                      titleText: 'Floors',
                      route: 'floors'),
                  Divider(
                    thickness: 1,
                  ),
                  _drawerItem(
                      leadingIcon: Icons.house_rounded,
                      titleText: 'Units',
                      route: 'units'),
                ],
                childrenPadding: EdgeInsets.all(16.0),
              ),
              ExpansionTile(
                leading: Icon(Icons.people_rounded),
                title: Text('HRM'),
                children: [
                  Divider(
                    thickness: 1,
                  ),
                  _drawerItem(
                      leadingIcon: Icons.people_outline,
                      titleText: 'Employees',
                      route: 'employees'),
                  Divider(
                    thickness: 1,
                  ),
                  _drawerItem(
                      leadingIcon: FontAwesomeIcons.barsStaggered,
                      titleText: 'Departments',
                      route: '/departments'),
                ],
                childrenPadding: EdgeInsets.all(16.0),
              ),
              _drawerItem(
                  leadingIcon: Icons.person,
                  titleText: 'Users',
                  route: '/users'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _drawerItem({leadingIcon, titleText, route}) {
    return ExpansionTile(
      onExpansionChanged: (value) {
        _navigate(context, "${route}");
      },
      leading: FaIcon(leadingIcon),
      title: Text(titleText),
      trailing: Text(''),
    );
  }
}
