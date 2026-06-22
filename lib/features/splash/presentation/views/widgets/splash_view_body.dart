import 'package:e_commerce/core/services/firebase_auth_service.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/features/auth/presentation/views/signin_view.dart';
import 'package:e_commerce/features/home/presentation/views/main_view.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNaviagtion();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(
              Assets.imagesPlant,
              width: MediaQuery.of(context).size.width * 0.2,
              height: MediaQuery.of(context).size.height * 0.2,
              fit: BoxFit.contain,
            ),
          ],
        ),
        SvgPicture.asset(
          Assets.imagesLogo,
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.2,
          fit: BoxFit.contain,
        ),
        SvgPicture.asset(
          Assets.imagesSplashBottom,
          height: MediaQuery.of(context).size.height * 0.2,
          fit: BoxFit.fill,
        ),
      ],
    );
  }

  void excuteNaviagtion() {
    //  bool isOnBoardingViewSeen = Prefs.getBool(kIsOnBoardingViewSeen);
    Future.delayed(const Duration(seconds: 5), () {
      //   if (isOnBoardingViewSeen) {
      //     // ignore: use_build_context_synchronously
      //     Navigator.pushReplacementNamed(context, SigninView.routeName);
      //   } else {
      // ignore: use_build_context_synchronously
      // Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      //  }

      var isLoggedIn = FirebaseAuthService().isLoggedIn();

      if (isLoggedIn) {
        Navigator.pushReplacementNamed(context, MainView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, SigninView.routeName);
      }
    });
  }
}
