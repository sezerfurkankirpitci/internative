import 'package:flutter/material.dart';
import 'package:internative/core/all_color.dart';
import 'package:internative/data/users_model.dart';
import 'package:internative/models/account/get_model.dart';
import 'package:internative/models/blog/get_categories_model.dart';
import 'package:internative/models/blog/toggle_favorite_model.dart';
import 'package:internative/models/login/signin_model.dart';
import 'package:internative/models/login/signup_model.dart';
import 'package:internative/services/api_service.dart';
import 'package:internative/widgets/button_widgets.dart';
import 'package:internative/widgets/password_textfield_widgets.dart';
import 'package:internative/widgets/textfield_widgets.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    void _login() async {
      SignInModel response = await ApiService()
          .signIn(emailController.text, passwordController.text);
      if (response.hasError == true) {
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: const Text('Giriş Yapılamadı.'),
                  content: Text(response.message.toString()),
                  actions: [
                    FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('Tamam'))
                  ],
                ),
            barrierDismissible: false);
        print(response.message);
      } else if (response.hasError == false) {
        String? key = response.data?.token;
        Provider.of<User>(context,listen: false).saveTokenToSharedPref(key!);
        Navigator.pushNamedAndRemoveUntil(context, '/nav', (route) => false);
        print(response.data?.token);
      } else {
        print('Bağlantı hatası.');
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Login'),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.047, vertical: size.height * 0.038),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ImageContainer(size: size),
              SizedBox(
                height: size.height * 0.047,
              ),
              TextFieldWidget(
                  hintText: 'Email',
                  prefixIcon: Icons.email,
                  controller: emailController),
              SizedBox(
                height: size.height * 0.02,
              ),
              PassWordTextFieldWidget(
                  hintText: 'Password', controller: passwordController),
              SizedBox(
                height: size.height * 0.04,
              ),
              BlackButton(
                  iconData: Icons.login,
                  text: 'Register',
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/register', (route) => false);
                  }),
              SizedBox(
                height: size.height * 0.02,
              ),
              WhiteButton(
                text: 'Login',
                onTap: _login,
                iconData: Icons.login,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width * 0.5,
      height: size.width * 0.5,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          image: const DecorationImage(
              image: NetworkImage(
                "https://images.unsplash.com/photo-1547721064-da6cfb341d50",
              ),
              fit: BoxFit.fill)),
    );
  }
}
