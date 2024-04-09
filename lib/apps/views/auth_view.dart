import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wypedriver/apps/controllers/auth_controller.dart';
import 'package:wypedriver/apps/services/firebase_service.dart';
import 'package:wypedriver/apps/utils/utils.dart';
import 'package:wypedriver/common_widgets/primary_button.dart';
import 'package:wypedriver/common_widgets/textfiled.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    FirebaseService firebaseService = FirebaseService();
    AuthController authController = Get.put(AuthController());
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 32.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                Assets.logo.toString(),
                height: 55.h,
              ),
              SizedBox(
                height: 29.h,
              ),
              Text(
                'Sign In',
                style: FontStyle.regular
                    .copyWith(fontSize: 20.sp, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                decoration: BoxDecoration(color: myColor().blue),
                height: 3.h,
                width: 72.w,
              ),
              SizedBox(
                height: 54.h,
              ),
              Text(
                'Welcome back',
                style: FontStyle.regular
                    .copyWith(fontSize: 32.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 32.h,
              ),
              Text(
                'Card holder name',
                style: FontStyle.regular
                    .copyWith(fontSize: 14.sp, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 10.h,
              ),
              LoginFiled(
                  controller: email, hintText: 'Email-Id', isObsecure: false),
              SizedBox(
                height: 30.h,
              ),
              LoginFiled(
                  controller: password, hintText: 'Password', isObsecure: true),
              SizedBox(
                height: 20.h,
              ),
              Center(
                child: Obx(
                  () => PrimaryButton(
                    text: authController.isLoading.value ? 'loading' : 'Log in',
                    onTap: () async {
                      authController.isLoading.value = true;
                      try {
                        await firebaseService.login(
                            context, email.text.trim(), password.text.trim());
                      } catch (e) {
                        Get.snackbar('error', 'Invaild Credentials');
                      }

                      authController.isLoading.value = false;
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
