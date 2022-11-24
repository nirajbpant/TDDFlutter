import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../../application/login/login_bloc.dart';
import '../../config/app_theme.dart';
import '../../config/constants/assets_constants.dart';
import '../../config/navigation/app_navigation.dart';
import '../../data/session/datastore/models/login_request.dart';
import '../../injectable/injection.dart';
import '../widgets/dummy_action_button.dart';
import '../widgets/string_field.dart';
import '../widgets/toast_message.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late AnimationController lottieController;

  @override
  void initState() {
    super.initState();
    lottieController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
  }

  @override
  void dispose() {
    super.dispose();
    lottieController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<LoginBloc>(),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            error: (err) => showToastMessages(message: err, color: Colors.red),
            successAndDeviceAuthorized: (errMsg) =>
                _navigateToHomeScreen(context),
            successAndDeviceUnAuthorized: () =>
                showDeviceActivationPopup(context: context),
          );
        },
        child: Scaffold(
            resizeToAvoidBottomInset: true,
            backgroundColor: AppTheme.onPrimaryColor,
            body: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: SizedBox(
                child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.13,
                        ),
                        Center(
                          child: Lottie.asset(loginAnimation,
                              height: 200,
                              width: 200,
                              controller: lottieController,
                              onLoaded: (composition) {
                            lottieController.forward();
                          }),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            "Login",
                            style: TextStyle(
                                fontFamily: fontNameMontserrat,
                                fontWeight: FontWeight.bold,
                                fontSize: 28,
                                color: Color(0xff121d3a)),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: UsernameField(
                            hintText: "Username",
                            controller: _emailController,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: PasswordField(
                            hintText: "Password",
                            controller: _passwordController,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: BlocBuilder<LoginBloc, LoginState>(
                            builder: (context, state) {
                              final bloc = context.read<LoginBloc>();
                              return state.maybeWhen(
                                  loading: () => _buildWidgetLoading(context),
                                  orElse: () {
                                    return dummyActionButton(
                                      isExtendedButton: true,
                                      btnName: 'Login',
                                      onPressed: () {
                                        if (_formKey.currentState!.validate()) {
                                          bloc.add(
                                            LoginEvent.login(
                                              request: LoginRequest(
                                                username: _emailController.text
                                                    .trim(),
                                                password: _passwordController
                                                    .text
                                                    .trim(),
                                                // deviceId: "",
                                              ),
                                            ),
                                          );
                                        }
                                      },
                                    );
                                  });
                            },
                          ),
                        ),
                      ],
                    )),
              ),
            )),
      ),
    );
  }

  Widget _buildWidgetLoading(
    BuildContext context,
  ) {
    return const CircularProgressIndicator();
  }

  void _navigateToHomeScreen(BuildContext context) {
    jumpToHomeScreen(context);
  }
}
