import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:airplane/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: Text(
          'Sign In with yout\nexisting account',
          style: blackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold),
        ),
      );
    }

    Widget inputSection() {
      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email Adress',
          hintText: 'Your Email Adress',
          controller: emailController,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Your Password',
          obscureText: true,
          suffixIcon: true,
          controller: passwordController,
        );
      }

      Widget submitButton() {
        return BlocConsumer<AuthCubit, AuthState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/main', (route) => false);
            } else if (state is AuthFailed) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: kRedColor,
                  content: Text(state.error),
                ),
              );
            }
          },
          builder: (context, state) {
            if (state is AuthLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            return CustomButton(
              title: 'Sign In',
              onPressed: () {
                context.read<AuthCubit>().signIn(
                      email: emailController.text,
                      password: passwordController.text,
                    );
              },
            );
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Column(
          children: [emailInput(), passwordInput(), submitButton()],
        ),
      );
    }

    Widget loginButton() {
      return Align(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/sign-up');
          },
          child: Container(
            margin: const EdgeInsets.only(top: 30, bottom: 30),
            child: Text(
              "Don't Have an account? SignUp!",
              style: greyTextStyle.copyWith(
                  fontSize: 16, decoration: TextDecoration.underline),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        child: ListView(
          children: [title(), inputSection(), loginButton()],
        ),
      )),
    );
  }
}
