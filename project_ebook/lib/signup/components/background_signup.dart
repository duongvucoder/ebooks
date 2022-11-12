import 'package:flutter/material.dart';

class BackgroundSignup extends StatelessWidget {
  final Widget childSignup;

  const BackgroundSignup({
    Key? key,
    required this.childSignup,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/signup_top.png',
              width: size.width * 0.35,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              'assets/images/main_bottom.png',
              width: size.width * 0.25,
            ),
          ),
          childSignup,
        ],
      ),
    );
  }
}
