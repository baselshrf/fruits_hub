import 'package:e_commerce/constants.dart';
import 'package:e_commerce/core/utils/app_colors.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:e_commerce/core/utils/app_text_styles.dart';
import 'package:e_commerce/core/widgets/custom_button.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/dont_have_account_widget.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/or_divider.dart';
import 'package:e_commerce/features/auth/presentation/views/widgets/social_login_button.dart';
import 'package:flutter/material.dart';

class SigninViewBody extends StatelessWidget {
  const SigninViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 24),
              const CustomTextFormField(
                hintText: 'البريد الالكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              const CustomTextFormField(
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xffC9CECF),
                ),
                hintText: 'كلمة المرور',
                textInputType: TextInputType.visiblePassword,
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: TextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 33),
              CustomButton(onPressed: () {}, text: 'تسجيل دخول'),
              const SizedBox(height: 33),
              const DontHaveAnAccountWidget(),
              const SizedBox(height: 33),
              const OrDivider(),
              const SizedBox(height: 16),
              SocialLoginButton(
                onPressed: () {},
                image: Assets.imagesGoogleIcon,
                title: 'تسجيل بواسطة جوجل',
              ),
              const SizedBox(height: 16),
              SocialLoginButton(
                onPressed: () {},
                image: Assets.imagesApplIcon,
                title: 'تسجيل بواسطة أبل',
              ),
              const SizedBox(height: 16),
              SocialLoginButton(
                onPressed: () {},
                image: Assets.imagesFacebookIcon,
                title: 'تسجيل بواسطة فيسبوك',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
