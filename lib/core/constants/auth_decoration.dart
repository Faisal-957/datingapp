import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:flutter/material.dart';

final authdecoration = InputDecoration(
  filled: true,
  fillColor: whiteColor,
  hintStyle: TextStyle(
    color: Colors.grey,
    fontSize: 18,
    fontWeight: FontWeight.w500,
  ),

  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(60),
    borderSide: const BorderSide(color: primaryColor, width: 2),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(60),
    borderSide: const BorderSide(color: secondaryColor, width: 2),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(60),
    borderSide: const BorderSide(color: Colors.grey, width: 2),
  ),
);
