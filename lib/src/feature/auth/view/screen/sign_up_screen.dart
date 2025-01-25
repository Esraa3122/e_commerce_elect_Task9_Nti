import 'package:e_commerce_elect/src/core/widget/validat.dart';
import 'package:e_commerce_elect/src/feature/auth/cubit/auth_cubit.dart';
import 'package:e_commerce_elect/src/feature/auth/cubit/auth_state.dart';
import 'package:e_commerce_elect/src/feature/auth/view/screen/log_in_screen.dart';
import 'package:e_commerce_elect/src/feature/auth/view/widget/custom_button_auth.dart';
import 'package:e_commerce_elect/src/feature/auth/view/widget/gender_selection.dart';
import 'package:e_commerce_elect/src/feature/auth/view/widget/text_form_field.dart';
import 'package:e_commerce_elect/src/feature/home/view/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

final TextEditingController nameController = TextEditingController();
final TextEditingController nationalIDController = TextEditingController();
final TextEditingController phoneNumberController = TextEditingController();
final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
final TextEditingController genderController = TextEditingController();
final TextEditingController tokenController = TextEditingController();

GlobalKey<FormState> formKey = GlobalKey();

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  void dispose() {
    //TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    nationalIDController.dispose();
    nameController.dispose();
    phoneNumberController.dispose();
    genderController.dispose();
    tokenController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.arrow_back_ios),
          ),
          body: BlocConsumer<AuthCubit, AuthState>(
            listener: (context, state) {
            if (state is AuthSuccess) {
              if (state.userData["status"] == "success") {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.green,
                    content: Text(state.userData["message"])));
              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const CategortScreen()));
              } 
              if (state.userData["status"] == "error") {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    backgroundColor: Colors.red,
                    content: Text(state.userData["message"])));
              }
            }
          }, builder: (context, state) {
            AuthCubit cubit = BlocProvider.of(context);
            return SingleChildScrollView(
              padding: const EdgeInsets.symmetric( horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  cubit.image == null 
                  ?MaterialButton(onPressed: (){
                    cubit.addImage();
                  },
                  child: const Icon(
                    Icons.camera,
                    size: 60,
                  ),
                  ):
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: FileImage(cubit.image!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                    ],
                  ),
                  TextFormFildAuth(
                    controller: nameController,
                    lable: 'Name',
                    hint: 'Enter your name',
                    prefix: Icons.person,
                    validator: (value) {
                      return MyValidators.displayNameValidator(value);
                    },
                  ),
                  TextFormFildAuth(
                    controller: emailController,
                    lable: 'Email',
                    hint: 'Enter your email',
                    prefix: Icons.email,
                    validator: (value) {
                      return MyValidators.emailValidator(value);
                    },
                  ),
                  TextFormFildAuth(
                    controller: passwordController,
                    lable: 'Password',
                    hint: 'Enter your password',
                    prefix: Icons.password,
                    validator: (value) {
                      return MyValidators.passwordValidator(value);
                    },
                  ),
                  TextFormFildAuth(
                    controller: phoneNumberController,
                    lable: 'Phone Number',
                    hint: 'Enter your phone number',
                    prefix: Icons.phone,
                    validator: (value) {
                      return MyValidators.phoneValidator(value);
                    },
                  ),
                  TextFormFildAuth(
                    controller: nationalIDController,
                    lable: 'National ID',
                    hint: 'Enter your national ID',
                    prefix: Icons.person_pin_outlined,
                    validator: (value) {
                      return MyValidators.nationalIdValidator(value);
                    },
                  ),
                  TextFormFildAuth(
                    controller: tokenController,
                    lable: 'Token',
                    hint: 'Enter a valid token',
                    prefix: Icons.token,
                    validator: (value) {
                      return MyValidators.tokenValidator(value);
                    },
                  ),
                  GenderSelection(
                    genderController: genderController,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text("Already have an account? "),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                       LogInScreen()));
                          },
                          icon: const Icon(
                            Icons.arrow_right_alt_rounded,
                            color: Colors.blueGrey,
                          ))
                    ],
                  ),
                  CustomButtomAuth(
                    text: 'Create Data',
                    onPressed: () {
                      cubit.poSTDataCubit(
                        nameData: nameController.text,
                        emailData: emailController.text,
                        phoneData: phoneNumberController.text,
                        nationalIdData: nationalIDController.text,
                        gender: genderController.text,
                        password: passwordController.text,
                        token: tokenController.text,
                      );
                    },
                  ),
                ],
              ),
            );
          })),
    );
  }
}
