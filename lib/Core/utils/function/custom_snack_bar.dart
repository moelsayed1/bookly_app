import 'package:flutter/material.dart';

void customSnackBar(context, String text) async {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}