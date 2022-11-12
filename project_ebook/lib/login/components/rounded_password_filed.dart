import 'package:flutter/material.dart';
import 'package:project_ebook/common/const.dart';
import 'package:project_ebook/login/components/tex_field_container.dart';

class RoundedPassWordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedPassWordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPassWordField> createState() => _RoundedPassWordFieldState();
}

class _RoundedPassWordFieldState extends State<RoundedPassWordField> {
  final TextEditingController _passwordController = TextEditingController();
  final String _passWordErr = 'Mật khẩu không hợp lệ';
  bool _isShowPassWord = true;
  final bool _passInvalid = false;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        controller: _passwordController,
        onChanged: widget.onChanged,
        obscureText: _isShowPassWord,
        decoration: InputDecoration(
          hintText: 'Mật khẩu',
          errorText: _passInvalid ? _passWordErr : null,
          icon: const Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: InkWell(
            onTap: () {
              setState(() {
                _isShowPassWord = !_isShowPassWord;
              });
              //checkPassWord();
            },
            child: const Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  // void checkPassWord() {
  //   setState(() {
  //     if (_passwordController.text.length < 6 ||
  //         !_passwordController.text.contains('@')) {
  //       _passInvalid = true;
  //     } else {
  //       _passInvalid = false;
  //     }
  //     //_isShowPassWord = !_isShowPassWord;
  //   });
  // }
}
