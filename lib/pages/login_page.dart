import 'package:depi_auth_ui/constants/assets.dart';
import 'package:depi_auth_ui/constants/colors.dart';
import 'package:depi_auth_ui/widgets/custom_button.dart';
import 'package:depi_auth_ui/widgets/custom_text_field.dart';
import 'package:depi_auth_ui/widgets/custom_text_widget.dart';
import 'package:depi_auth_ui/widgets/or_divider.dart';
import 'package:depi_auth_ui/widgets/social_auth_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppAssets.logo, width: 72.w, height: 72.w),
            SizedBox(height: 10.h),
            CustomText(
              text: 'Welcome to lafyuu',
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
            SizedBox(height: 5.h),
            CustomText(
              text: 'Sign in to continue',
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
            SizedBox(height: 15.h),

            Padding(
              padding: EdgeInsets.all(8.0.sp),
              child: TextInputField(
                hintText: 'Your Email',
                prefixIcon: Icon(Icons.email_outlined),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                onSubmitted: (value) {
                  //TODO
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0.sp),
              child: TextInputField(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock_outline),
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                obscureText: true,
                onSubmitted: (value) {
                  //TODO
                },
              ),
            ),
            SizedBox(height: 10.h),
            SizedBox(
              width: 343.w,
              height: 57.h,
              child: AnimatedButton(
                onTap: () {},
                backgroundColor: AppColors.mainColor,
                child: Center(
                  child: CustomText(
                    text: 'sign in',
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            OrDivider(),
            SocialAuthContainers(
              onGooglePressed: () {},
              onFacebookPressed: () {},
            ),
            SizedBox(height: 10.h),
            GestureDetector(
              child: CustomText(
                text: 'Forgot Password?',
                color: AppColors.mainColor,
                fontWeight: FontWeight.w700,
                fontSize: 12.sp,
              ),
              onTap: () {
                //TODO
              },
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account? ",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
                GestureDetector(
                  onTap: () {
                    // Handle sign up navigation
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                      color: AppColors.mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
