import 'package:depi_auth_ui/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialAuthContainers extends StatelessWidget {
  final VoidCallback onGooglePressed;
  final VoidCallback onFacebookPressed;

  const SocialAuthContainers({
    super.key,
    required this.onGooglePressed,
    required this.onFacebookPressed,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerWidth = screenWidth * 0.9; // 80% of screen width
    const containerHeight = 60.0;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildSocialContainer(
          width: containerWidth,
          height: containerHeight,
          onTap: onGooglePressed,
          icon: FontAwesomeIcons.google,
          iconColor: Colors.red,
          text: 'Login with Google',
        ),
        const SizedBox(height: 16),
        _buildSocialContainer(
          width: containerWidth,
          height: containerHeight,
          onTap: onFacebookPressed,
          icon: FontAwesomeIcons.facebook,
          iconColor: Colors.blue,
          text: 'Login with Facebook',
        ),
      ],
    );
  }

  Widget _buildSocialContainer({
    required double width,
    required double height,
    required VoidCallback onTap,
    required IconData icon,
    required Color iconColor,
    required String text,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color.fromARGB(48, 158, 158, 158),
            width: 1.w,
          ),
        ),
        child: Stack(
          children: [
            // Centered text
            Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff9098B1),
                ),
              ),
            ),
            // Icon at start
            Positioned(
              left: 20,
              top: 0,
              bottom: 0,
              child: Center(
                child: Image.asset(
                  icon == FontAwesomeIcons.google
                      ? AppAssets.google
                      : AppAssets.facebook,
                  width: 20,
                  height: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
