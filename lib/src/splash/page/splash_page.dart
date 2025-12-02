import 'package:bamtol_market/src/common/components/getx_listener.dart';
import 'package:bamtol_market/src/common/controller/data_load_controller.dart';
import 'package:bamtol_market/src/splash/controller/splash_controller.dart';
import 'package:bamtol_market/src/splash/enum/step_type.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetXListener<bool>(
          listen: (bool value) {
            if (value) {
              controller.loadStep(StepType.authCheck);
            }
          },
          stream: Get.find<DataLoadController>().isDataLoad,
          child: GetXListener<StepType>(
            initCall: () {
              controller.loadStep(StepType.dataLoad);
            },
            listen: (StepType? value) {
              if (value == null) return;
              switch (value) {
                case StepType.init:
                case StepType.dataLoad:
                  Get.find<DataLoadController>().loadData();
                  break;
                case StepType.authCheck:
                  print('authCheck');
                  break;
              }
            },
            stream: controller.loadStep,
            child: Obx(
              () => Text(
                '${controller.loadStep.value.name} 중 입니다.',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
