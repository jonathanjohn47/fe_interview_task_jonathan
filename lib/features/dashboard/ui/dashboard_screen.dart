import 'package:fe_interview_task_jonathan/features/home/ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../get_controllers/dashboard_get_controller.dart';

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final DashboardGetController getController =
      Get.put(DashboardGetController());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return mobileUi();
            } else {
              return webUi();
            }
          },
        ),
        bottomNavigationBar: TabBar(
          overlayColor: MaterialStateProperty.all(Colors.black),
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide.none, // Removes the border line
          ),
          indicatorColor: Colors.black,
          dividerColor: Colors.transparent,
          tabs: [
            Tab(
              child: Image.asset("assets/images/img_7.png"),
            ),
            Tab(
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.sp),
                    child: Image.asset("assets/images/img_8.png"),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.sp),
                        color: Get.theme.primaryColor,
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.sp, vertical: 1.sp),
                      child: Text(
                        "10",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 7.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Tab(
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.all(5.sp),
                    child: Image.asset("assets/images/img_9.png"),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.sp),
                        color: Get.theme.primaryColor,
                      ),
                      padding: EdgeInsets.symmetric(
                          horizontal: 3.sp, vertical: 1.sp),
                      child: Text(
                        "10",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 7.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Tab(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset("assets/images/img_11.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget mobileUi() {
    return TabBarView(children: [
      HomeScreen(),
    ]);
  }

  Widget webUi() {
    return Container();
  }
}
