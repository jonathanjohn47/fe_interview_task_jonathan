import 'package:fe_interview_task_jonathan/components/icon_btn.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
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
                          Colors.black.withOpacity(0.3),
                          Colors.black.withOpacity(0.2),
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
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 60.sp,
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
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: const AssetImage("assets/images/img_3.png"),
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
                    const Spacer(
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
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Table(
                  children: [
                    TableRow(children: [
                      Obx(() => abcdCards(
                              0,
                              getController.currentIndex.value == 0,
                              "The peace in the early mornings", (index) {
                            getController.currentIndex.value = index;
                          })),
                      Obx(() => abcdCards(
                              1,
                              getController.currentIndex.value == 1,
                              "The magical golden hours", (index) {
                            getController.currentIndex.value = index;
                          })),
                    ]),
                    TableRow(children: [
                      Obx(() => abcdCards(
                              2,
                              getController.currentIndex.value == 2,
                              "Wind-down time after dinners", (index) {
                            getController.currentIndex.value = index;
                          })),
                      Obx(() => abcdCards(
                              3,
                              getController.currentIndex.value == 3,
                              "The serenity past midnight", (index) {
                            getController.currentIndex.value = index;
                          })),
                    ]),
                  ],
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Row(
                  children: [
                    Text("""Pick your option.
See who has a similar mind.""",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp)),
                    const Spacer(),
                    Obx(() {
                      return IconBtn(
                        onPressed: () {
                          getController.pickedOption.value = 0;
                        },
                        backgroundColor: getController.pickedOption.value == 0
                            ? AppColors.primary
                            : Colors.transparent,
                        foregroundColor: getController.pickedOption.value == 0
                            ? Colors.black
                            : Get.theme.primaryColor,
                        borderColor: Get.theme.primaryColor,
                        child: const Icon(
                          Icons.mic,
                        ),
                      );
                    }),
                    SizedBox(
                      width: 10.sp,
                    ),
                    Obx(() {
                      return IconBtn(
                        onPressed: () {
                          getController.pickedOption.value = 1;
                        },
                        backgroundColor: getController.pickedOption.value == 1
                            ? AppColors.primary
                            : Colors.transparent,
                        foregroundColor: getController.pickedOption.value == 1
                            ? Colors.black
                            : Get.theme.primaryColor,
                        borderColor: Get.theme.primaryColor,
                        child: Icon(MdiIcons.arrowRight),
                      );
                    })
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

  Widget abcdCards(
      int index, bool isSelected, String text, Function(int) onTap) {
    return Padding(
      padding: EdgeInsets.all(5.sp),
      child: NeumorphicButton(
        onPressed: () {
          onTap(index);
        },
        padding: EdgeInsets.zero,
        style: NeumorphicStyle(
          color: AppColors.darkColor,
          shadowDarkColor: AppColors.darkColor.withOpacity(0.5),
          shadowLightColor: AppColors.darkColor.withOpacity(0.5),
          border: NeumorphicBorder(
            color: isSelected ? Get.theme.primaryColor : Colors.transparent,
            width: 2.0.sp,
          ),
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12.sp)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.sp, horizontal: 6.sp),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected
                        ? Get.theme.primaryColor
                        : AppColors.greyColor,
                    width: 2.0,
                  ),
                ),
                child: CircleAvatar(
                  backgroundColor:
                      isSelected ? Get.theme.primaryColor : Colors.transparent,
                  radius: 15.sp,
                  foregroundColor: AppColors.greyColor,
                  child: Text(
                    index == 0
                        ? "A"
                        : index == 1
                            ? "B"
                            : index == 2
                                ? "C"
                                : "D",
                    style: TextStyle(
                        color: isSelected ? Colors.white : AppColors.greyColor,
                        fontSize: 12.sp),
                  ),
                ),
              ),
              SizedBox(
                width: 5.sp,
              ),
              Expanded(
                  child: Text(text,
                      style: TextStyle(
                          color: AppColors.greyColor, fontSize: 14.sp))),
            ],
          ),
        ),
      ),
    );
  }
}
