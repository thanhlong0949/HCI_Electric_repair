import 'package:elect_repair/config/themes.dart';
import 'package:elect_repair/widgets/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: primaryColor,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: primaryColor,
            size: 18,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: primaryColor,
            size: 18,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
