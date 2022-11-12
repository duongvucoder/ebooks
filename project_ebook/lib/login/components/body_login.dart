import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:project_ebook/ebook/screens/ebook_screen.dart';
import 'package:project_ebook/login/components/already_have_an_account_check.dart';
import 'package:project_ebook/login/components/background_login.dart';
import 'package:project_ebook/login/components/rounded_input_field.dart';
import 'package:project_ebook/login/components/rounded_password_filed.dart';
import 'package:project_ebook/signup/screens/signup_screen.dart';
import 'package:project_ebook/welcome/components/rounded_buttom.dart';

class BodyLogin extends StatelessWidget {
  const BodyLogin({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackgroundLogin(
      childLogin: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Đăng Nhập',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: 'Nhập Email',
              onChanged: ((value) {}),
            ),
            RoundedPassWordField(
              onChanged: (value) {},
            ),
            RoundedButtom(
              text: 'Đăng Nhập',
              onPress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EbookScreen(),
                  ),
                );
              },
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            AlreadyHaveAnAccountCheck(
              onpress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignUpScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
