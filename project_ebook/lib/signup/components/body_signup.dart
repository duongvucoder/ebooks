import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_ebook/login/components/already_have_an_account_check.dart';
import 'package:project_ebook/login/components/rounded_input_field.dart';
import 'package:project_ebook/login/components/rounded_password_filed.dart';
import 'package:project_ebook/login/screens/login_screen.dart';
import 'package:project_ebook/signup/components/background_signup.dart';
import 'package:project_ebook/signup/components/design_icon_svg.dart';
import 'package:project_ebook/signup/components/design_divider.dart';
import 'package:project_ebook/welcome/components/rounded_buttom.dart';

class BodySignup extends StatelessWidget {
  const BodySignup({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundSignup(
      childSignup: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'ĐĂNG KÝ',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/signup.svg',
              height: size.height * 0.35,
            ),
            RoundedInputField(
              hintText: 'Nhập Email',
              onChanged: (value) {},
            ),
            RoundedPassWordField(
              onChanged: (value) {},
            ),
            RoundedButtom(
              text: 'ĐĂNG KÝ',
              onPress: () {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              login: false,
              onpress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
            ),
            const DisignDivider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DesignIconSVG(
                  iconSVG: 'assets/icons/facebook.svg',
                  onPress: () {},
                ),
                DesignIconSVG(
                  iconSVG: 'assets/icons/twitter.svg',
                  onPress: () {},
                ),
                DesignIconSVG(
                  iconSVG: 'assets/icons/google-plus.svg',
                  onPress: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
