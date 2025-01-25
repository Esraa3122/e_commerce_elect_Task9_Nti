import 'package:e_commerce_elect/src/core/widget/validat.dart';
import 'package:e_commerce_elect/src/feature/auth/cubit/auth_cubit.dart';
import 'package:e_commerce_elect/src/feature/auth/cubit/auth_state.dart';
import 'package:e_commerce_elect/src/feature/auth/view/screen/sign_up_screen.dart';
import 'package:e_commerce_elect/src/feature/auth/view/widget/custom_button_auth.dart';
import 'package:e_commerce_elect/src/feature/auth/view/widget/text_form_field.dart';
import 'package:e_commerce_elect/src/feature/profile/view/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class LogInScreen extends StatelessWidget {
  LogInScreen({super.key});

  final TextEditingController email1Controller = TextEditingController();
  final TextEditingController passward1Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios),
            ),
          ),
          body:
              BlocConsumer<AuthCubit, AuthState>(listener: (context, state) {
            if (state is AuthSuccess) {
              if (state.userData["status"] == "success") {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.green,
                    content: Text(state.userData["message"])));
               Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ProfileScreen()));
              }
              if (state.userData["status"] == "error") {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(state.userData["message"])));
              }
            }
          }, builder: (context, state) {
            AuthCubit cubit = BlocProvider.of(context);
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              child: Form(
                child: ListView(
                  children: [
                    Text(
                      "Log in",
                      style: TextStyle(
                          fontSize: 33, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    TextFormFildAuth(
                      controller: email1Controller,
                      lable: 'email1',
                      hint: 'Enter your email address',
                      prefix: Icons.email,
                      validator: (value) {
                        return MyValidators.emailValidator(value);
                      },
                    ),
                    TextFormFildAuth(
                      controller: passward1Controller,
                      lable: 'passward',
                      hint: 'Enter your password',
                      prefix: Icons.password,
                      validator: (value) {
                        return MyValidators.passwordValidator(value);
                      },
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Forgot your Password? "),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                       SignUpScreen()));
                          },
                          icon: const Icon(
                            Icons.arrow_right_alt_rounded,
                            color: Colors.blueGrey,
                          ))
                    ],
                  ),
                  const SizedBox(
                      height: 15,
                    ),
                    if(state is AuthLoading)
                      CircularProgressIndicator(),
                    CustomButtomAuth(
                      text: 'Log in',
                      onPressed: () {
                        cubit.getDataCubit(
                          emailData: email1Controller.text,
                          password: passward1Controller.text,
                        );
                      },
                    )
                  ],
                ),
              ),
            );
          })),
    );
  }
}

