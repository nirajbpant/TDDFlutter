import 'package:dummy_flutter/screens/widgets/dummy_flat_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/device_auth/device_auth_bloc.dart';
import '../../../config/constants/assets_constants.dart';
import '../../../config/navigation/app_navigation.dart';
import '../../../data/device_authorization/datastore/models/device_auth_request.dart';
import '../../widgets/string_field.dart';
import '../../widgets/toast_message.dart';

class AuthPanel extends StatefulWidget {
  const AuthPanel({Key? key}) : super(key: key);

  @override
  State<AuthPanel> createState() => _AuthPanelState();
}

class _AuthPanelState extends State<AuthPanel> {
  final TextEditingController _authCodeController = TextEditingController();
  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    super.dispose();
    _authCodeController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeviceAuthBloc>();
    return BlocListener<DeviceAuthBloc, DeviceAuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authorized: () => navigateToHomeScreen(context),
          unAuthorized: (errorMessage) =>
              showToastMessages(message: errorMessage, color: Colors.red),
          orElse: () => {},
        );
      },
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 4,
            ),
            const Icon(
              Icons.lock,
              size: 50,
              color: Colors.redAccent,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Unidenfied Device",
              style: TextStyle(
                  fontFamily: fontNameMontserrat,
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: AuthCodeField(
                  controller: _authCodeController,
                  hintText: "Authorization Code"),
            ),
            const SizedBox(
              height: 40,
            ),
            BlocBuilder<DeviceAuthBloc, DeviceAuthState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () => _buildWidgetLoading(context),
                  orElse: () => DummyFlatButton(
                    btnName: "Authorize",
                    icon: const SizedBox(),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        bloc.add(
                          DeviceAuthEvent.authorize(
                            DeviceAuthRequest(
                              activationKey:
                                  _authCodeController.text.trim().toString(),
                            ),
                          ),
                        );
                      }
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWidgetLoading(
    BuildContext context,
  ) {
    return const Center(child: CircularProgressIndicator());
  }

  void navigateToHomeScreen(BuildContext context) {
    showToastMessages(message: "Authorized Successfully", color: Colors.green);
    Navigator.of(context).pop();
  }
}
