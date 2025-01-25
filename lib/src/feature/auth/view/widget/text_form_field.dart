import 'package:e_commerce_elect/src/core/style/size_app.dart';
import 'package:e_commerce_elect/src/core/widget/border_text_field.dart';
import 'package:flutter/material.dart';


class TextFormFildAuth extends StatelessWidget {
  const TextFormFildAuth(
      {super.key, required this.controller, required this.lable, required this.hint, required this.prefix, this.validator,
      });

  final TextEditingController controller;
  final String lable;
  final String hint;
  final IconData prefix;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          label: Text(lable,style: const TextStyle(fontSize: SizeApp.s15),),
          hintText: hint,
          prefixIcon: Icon(prefix),
          suffix: InkWell(
              onTap: () {
                controller.clear();
              },
              child: const Icon(
                Icons.highlight_remove,
                color: Colors.red,
              )),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          enabledBorder: borderTextField(color: Colors.white, radius: 0),
          focusedBorder: borderTextField(color: Colors.green, radius: 15),
          errorBorder: borderTextField(color: Colors.red, radius: 15),
        ),
      ),
    );
  }
}