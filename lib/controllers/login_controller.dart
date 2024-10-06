import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/route_constants.dart';

class LoginControllers extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  RxBool obscure = true.obs;
  RxBool isRememberMe = false.obs;

  ///Password Toggle
  viewPassword() {
    obscure.value = !obscure.value;
  }
///checkBoc Toggle
  void rememberMe() {
    isRememberMe.value = !isRememberMe.value;
  }

  /// Implement login method here
  void handleSignIn() {
    Get.offAndToNamed(RouteConstants.newsList);
  }
}