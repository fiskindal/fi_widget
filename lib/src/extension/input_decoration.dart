import 'package:flutter/material.dart';

extension InputDecorationExtension on BuildContext {
  static InputDecoration defaultInputDecoration(BuildContext context,
      {String? errorText,
      required double boxConstraintsMaxWidth,
      required String hintText}) {
    return InputDecoration(
      fillColor: Color(0xFFF5F5F7),
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        borderSide: BorderSide(
          color: Color(0xFFF5F5F7),
          width: 5.0,
        ),
      ),
      constraints: BoxConstraints(maxWidth: boxConstraintsMaxWidth),
      hintText: hintText,
      errorText: errorText,
    );
  }
}
