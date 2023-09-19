import 'package:flutter/material.dart';
import 'package:flutter_monitoring/app/app_constants.dart';

class TextFieldItem extends StatelessWidget {
  final String txt;
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType? textInputType;
  final String? warningMessage;
  final bool required;

  // static GlobalKey<FormState> formState=GlobalKey<FormState>();

  const TextFieldItem({
    Key? key,
    required this.txt,
    required this.controller,
    required this.obscureText,
    required this.textInputType,
    this.warningMessage,
    this.required = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: !required
            ? null
            : (value) {
                if (value!.isEmpty || value == '') {
                  return (warningMessage!);
                } else {
                  return null;
                }
              },
        cursorColor: AppConstants.mainColor,
        obscureText: obscureText,
        keyboardType: textInputType,
        controller: controller,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          labelText: txt,
          labelStyle: TextStyle(
            color: AppConstants.mainColor,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppConstants.mainColor,
            ),
            borderRadius: BorderRadius.circular(25.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: AppConstants.mainColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: AppConstants.mainColor,
            ),
          ),
        ));
  }
}
