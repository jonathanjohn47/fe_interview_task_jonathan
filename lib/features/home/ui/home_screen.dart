import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../utility/app_colors.dart';
import '../get_controllers/home_get_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeGetController getController = Get.put(HomeGetController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return mobileUi();
          } else {
            return webUi();
          }
        },
      ),
    );
  }

  Widget mobileUi() {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/img_1.png",
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0.9),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              color: Colors.black,
              height: double.infinity,
              width: double.infinity,
            ))
          ],
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 80.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Stroll Bonfire",
                      style: TextStyle(
                        color: AppColors.lightPrimary,
                        fontSize: 34.sp,
                        fontWeight: FontWeight.w700,
                        shadows: [
                          Shadow(
                            offset: Offset(2.0.sp, 2.0.sp),
                            blurRadius: 6.0.sp,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      MdiIcons.chevronDown,
                      color: AppColors.lightPrimary,
                      shadows: [
                        Shadow(
                          offset: Offset(1.0.sp, 1.0.sp),
                          blurRadius: 3.0.sp,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/img_5.png",
                          width: 10.sp,
                        ),
                        SizedBox(
                          width: 5.sp,
                        ),
                        Text(
                          "22h 00m",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/img_6.png",
                          width: 10.sp,
                        ),
                        SizedBox(
                          width: 5.sp,
                        ),
                        Text(
                          "22h 00m",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/img_3.png"),
                      radius: 30.sp,
                    ),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Angelina, 28",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 11.sp),
                          ),
                          Text("What is your favorite time of the day?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20.sp)),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Row(
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 5,
                      child: Text("“Mine is definitely the peace in the morning.”",
                          style: TextStyle(
                              color: AppColors.lightPrimary,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.sp,
                              fontStyle: FontStyle.italic)),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget webUi() {
    return Container();
  }
}
