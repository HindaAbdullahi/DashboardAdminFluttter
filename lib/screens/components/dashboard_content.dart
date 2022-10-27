import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dashboard1/constants/constants.dart';
import 'package:dashboard1/constants/responsive.dart';
import 'package:dashboard1/screens/components/analytic_cards.dart';
import 'package:dashboard1/screens/components/custom_appbar.dart';
import 'package:dashboard1/screens/components/top_referals.dart';
import 'package:dashboard1/screens/components/users.dart';
import 'package:dashboard1/screens/components/users_by_device.dart';
// import 'package:dashboard1/screens/components/viewers.dart';
// import 'package:dashboard1/screens/components/view_line_chart.dart';
import 'package:dashboard1/screens/components/bar_chart_users.dart';
// import 'discussions.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(appPadding),
        child: Column(
          children: [
            CustomAppbar(),
            SizedBox(
              height: appPadding,
            ),
            Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          AnalyticCards(),
                          SizedBox(
                            height: appPadding,
                          ),
                          // Users(),
                          if (Responsive.isMobile(context))
                            SizedBox(
                              height: appPadding,
                            ),
                          if (Responsive.isMobile(context)) BarChartSample2(),
                        ],
                      ),
                    ),
                    if (!Responsive.isMobile(context))
                      SizedBox(
                        width: appPadding,
                      ),
                    if (!Responsive.isMobile(context))
                      Expanded(
                        flex: 2,
                        child: BarChartSample2(),
                      ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                        children: [
                          SizedBox(
                            height: appPadding,
                          ),
                          Row(
                            children: [
                              if(!Responsive.isMobile(context))
                                Expanded(
                                  child: TopReferals(),
                                  flex: 2,
                                ),
                              // if(!Responsive.isMobile(context))
                              //   SizedBox(width: appPadding,),
                              // Expanded(
                              //   flex: 3,
                              //   child: Viewers(),
                              // ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          
                          if (Responsive.isMobile(context))
                            SizedBox(
                              height: appPadding,
                            ),
                          if (Responsive.isMobile(context)) TopReferals(),
                          if (Responsive.isMobile(context))
                            SizedBox(
                              height: appPadding,
                            ),
                          if (Responsive.isMobile(context)) UsersByDevice(),
                        ],
                      ),
                    ),
                    if (!Responsive.isMobile(context))
                      SizedBox(
                        width: appPadding,
                      ),
                    if (!Responsive.isMobile(context))
                      Expanded(
                        flex: 2,
                        child: BarChartSample2(),
                      ),
                  ],
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
