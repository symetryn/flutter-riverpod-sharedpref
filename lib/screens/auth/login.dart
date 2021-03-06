import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_skeleton/controllers/auth/auth_controller.dart';
import 'package:flutter_skeleton/widgets/index.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const EMAIL_REGEX =
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

class LoginScreen extends HookConsumerWidget {
  LoginScreen({Key? key}) : super(key: key);

  final _formKey = GlobalKey<FormState>();

  String? _requiredValidator({String? value, String? name}) {
    if (value == null || value.isEmpty) {
      return "$name is required";
    }
    return null;
  }

  String? _emailValidator(String? email) {
    final valid = RegExp(EMAIL_REGEX).hasMatch(email ?? "");
    if (!valid) {
      return "Email format mismatch";
    }
    return null;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final _emailController = useTextEditingController();
    final _passwordController = useTextEditingController();

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ref.watch(authControllerProvider).maybeWhen(
            loading: () {
              return CircularProgressIndicator();
            },
            orElse: () {
              return Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login Page",
                      style: textTheme.headline5?.copyWith(
                        color: Colors.blue,
                      ),
                    ),
                    TextFormField(
                      controller: _emailController,
                      validator: (value) =>
                          _requiredValidator(
                            value: value,
                            name: "Email",
                          ) ??
                          _emailValidator(value),
                      decoration: InputDecoration(
                        labelText: "Email",
                      ),
                    ),
                    TextFormField(
                      obscureText: true,
                      controller: _passwordController,
                      validator: (value) => _requiredValidator(
                        value: value,
                        name: "Password",
                      ),
                      decoration: InputDecoration(
                        labelText: "Password",
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        LoadingButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              await ref
                                  .read(authControllerProvider.notifier)
                                  .signIn(
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                  );
                            }
                          },
                          buttonText: "Login",
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
