import 'package:flutter/material.dart';

InputBorder borderTextField( { required Color color, required double radius}){
  return OutlineInputBorder(
    borderSide: BorderSide(color: color),
    borderRadius: BorderRadius.circular(radius),
  );
}