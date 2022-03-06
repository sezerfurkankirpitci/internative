import 'package:flutter/material.dart';
import 'package:internative/core/all_color.dart';
import 'package:internative/models/login/signup_model.dart';
import 'package:internative/services/api_service.dart';
import 'package:internative/widgets/button_widgets.dart';
import 'package:internative/widgets/password_textfield_widgets.dart';
import 'package:internative/widgets/textfield_widgets.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final rePasswordController = TextEditingController();

  void _signUp() async {
    SignUpModel response = await ApiService().signUp(emailController.text,
        passwordController.text, rePasswordController.text);
    if (response.hasError == true) {
      print(response.message);
    } else if (response.hasError == false) {
      print(response.message);
      print(response.data?.token);
    } else {
      print('Bağlantı hatası.');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Sign Up'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.047, vertical: size.height * 0.038),
          child: Column(
            children: [
              Container(
                width: size.width * 0.5,
                height: size.width * 0.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: const DecorationImage(
                        image: NetworkImage(
                          "https://images.unsplash.com/photo-1547721064-da6cfb341d50",
                        ),
                        fit: BoxFit.fill)),
              ),
              SizedBox(
                height: size.height * 0.047,
              ),
              TextFieldWidget(
                hintText: 'Email',
                prefixIcon: Icons.email,
                controller: emailController,
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              PassWordTextFieldWidget(
                  hintText: 'Password', controller: passwordController),
              SizedBox(
                height: size.height * 0.02,
              ),
              PassWordTextFieldWidget(
                  hintText: 'Re-Password', controller: rePasswordController),
              SizedBox(
                height: size.height * 0.04,
              ),
              BlackButton(
                  text: 'Register', iconData: Icons.login, onTap: _signUp),
              SizedBox(
                height: size.height * 0.02,
              ),
              WhiteButton(
                  iconData: Icons.login,
                  text: 'Login',
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/login', (route) => false);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
