import 'package:flutter/material.dart';
import 'package:dashboard1/constants/constants.dart';
import 'package:dashboard1/constants/responsive.dart';
import 'package:dashboard1/controllers/controller.dart';
import 'package:dashboard1/screens/components/dashboard_content.dart';
import 'package:dashboard1/screens/components/view_line_chart.dart';
import 'components/drawer_menu.dart';
import 'package:provider/provider.dart';

class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      drawer: NavigationDrawer(),
      key: context.read<Controller>().scaffoldKey,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) Expanded(child: NavigationDrawer(),),
            Expanded(
              flex: 5,
              child: DashboardContent(),
            )
          ],
        ),
      ),
    );
  }
}
