import 'package:flutter/material.dart';

extension InputDecorationExtension on BuildContext {
  static InputDecoration defaultInputDecoration(BuildContext context,
      {String? errorText,
      required double boxConstraintsMaxWidth,
      required String hintText}) {
    return InputDecoration(
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        borderSide: BorderSide(
          width: 5.0,
        ),
      ),
      constraints: BoxConstraints(maxWidth: boxConstraintsMaxWidth),
      hintText: hintText,
      errorText: errorText,
    );
  }
}
