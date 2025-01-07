import 'package:get/get.dart';
import 'package:flutter/material.dart';
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
      ),);
          }
     
        
        Widget mobileUi() {
    return Container();
  }
  
  Widget webUi() {
    return Container();
  }
     }
