import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salon_xe_may/blocs/login_bloc/bloc/login_bloc.dart';
import 'package:salon_xe_may/pages/home_page.dart';

import 'common_style.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginBloc = LoginBloc();

  @override
  void initState() {
    _loginBloc.add(LoginInit());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          if (state is LoginInitial) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              body: Container(
                width: double.infinity,
                decoration: const BoxDecoration(gradient: Style.gradient),
                padding: const EdgeInsets.all(50),
                child: Column(
                  children: [
                    const SizedBox(
                      // image-logo
                      height: 150,
                    ),
                    const LoginForm(),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: GestureDetector(
                        child: const Text(
                          "Quên mật khẩu?",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: "Regular"),
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else if (state is LoginSuccess) {
            return const HomePage();
          }
          return Container();
        },
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var txtLogin = TextEditingController();
  var txtPassword = TextEditingController();

  @override
  void dispose() {
    txtLogin.dispose();
    txtPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Text("Quản lý Salon xe",
              style: Theme.of(context).textTheme.headline1),
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            autofocus: false,
            controller: txtLogin,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
                helperText: "",
                hintText: "Tên đăng nhập",
                prefixIcon: Icon(Icons.person)),
          ),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            autofocus: false,
            controller: txtPassword,
            obscureText: true,
            decoration: const InputDecoration(
                helperText: "",
                hintText: "Mật khẩu",
                prefixIcon: Icon(Icons.lock)),
          ),
          Container(
            // k dùng SizedBox vì chỉnh width + margin top
            margin: const EdgeInsets.only(
              top: 40,
            ),
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                context
                    .read<LoginBloc>()
                    .add(LoginSubmit(email: "", password: ""));
              },
              child: const Text(
                "Đăng nhập",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
