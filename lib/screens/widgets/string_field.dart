import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../config/constants/assets_constants.dart';

class EmailField extends StringField {
  EmailField({
    Key? key,
    required String hintText,
    required TextEditingController controller,
    String errorText = 'Enter a valid email address',
  }) : super(
          key: key,
          controller: controller,
          hintText: hintText,
          inputDecoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontFamily: fontNameMontserrat,
              fontWeight: FontWeight.w400,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            prefixIcon: const Icon(
              Icons.email,
              color: Colors.black,
            ),
            contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          ),
          validator: MultiValidator(
            [
              RequiredValidator(
                errorText: 'Email is required',
              ),
              EmailValidator(errorText: errorText)
            ],
          ),
        );
}

class FirstNameField extends StringField {
  FirstNameField({
    Key? key,
    required TextEditingController controller,
    required String hintText,
  }) : super(
          key: key,
          controller: controller,
          inputDecoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            hintStyle: TextStyle(color: Colors.grey[700]),
            filled: true,
            contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          ),
          hintText: hintText,
          validator: MultiValidator(
            [
              RequiredValidator(errorText: "Please Enter First Name"),
              MinLengthValidator(2, errorText: "Please Enter a Valid Name"),
              PatternValidator(r'[a-zA-Z]',
                  errorText: "Please Enter a Valid Name,"),
            ],
          ),
        );
}

class UsernameField extends StringField {
  UsernameField({
    Key? key,
    required TextEditingController controller,
    required String hintText,
  }) : super(
          key: key,
          controller: controller,
          inputDecoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontFamily: fontNameMontserrat,
              fontWeight: FontWeight.w400,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            prefixIcon: const Icon(
              Icons.email,
              color: Colors.black,
            ),
            contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          ),
          hintText: hintText,
          validator: MultiValidator(
            [
              RequiredValidator(errorText: "Please Enter First Name"),
              MinLengthValidator(2,
                  errorText: "Please Enter a Valid User Name"),
              PatternValidator(r'[a-zA-Z]',
                  errorText: "Please Enter a Valid User Name,"),
            ],
          ),
        );
}

class LastNameNameField extends StringField {
  LastNameNameField({
    Key? key,
    required TextEditingController controller,
    required String hintText,
  }) : super(
          key: key,
          controller: controller,
          hintText: hintText,
          inputDecoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            hintStyle: TextStyle(color: Colors.grey[700]),
            filled: true,
            contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          ),
          validator: MultiValidator(
            [
              RequiredValidator(errorText: "Please Enter First Name"),
              MinLengthValidator(2, errorText: "Please Enter a Valid Name"),
              PatternValidator(r'[a-zA-Z]',
                  errorText: "Please Enter a Valid Name,"),
            ],
          ),
        );
}

class AddressField extends StringField {
  AddressField({
    Key? key,
    required TextEditingController controller,
    required String hintText,
  }) : super(
          key: key,
          controller: controller,
          inputDecoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            hintStyle: TextStyle(color: Colors.grey[700]),
            filled: true,
            contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          ),
          hintText: hintText,
          validator: MultiValidator(
            [
              RequiredValidator(errorText: "Please Enter Address"),
              MinLengthValidator(3, errorText: "Please Enter a Valid Address"),
              PatternValidator(r'[a-zA-Z]',
                  errorText: "Please Enter a Valid Address,"),
            ],
          ),
        );
}

class PasswordField extends StringField {
  PasswordField({
    Key? key,
    required String hintText,
    required TextEditingController controller,
    TextEditingController? secondaryPasswordController,
  }) : super(
          key: key,
          controller: controller,
          hintText: hintText,
          inputDecoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 15,
              color: Colors.black,
              fontFamily: fontNameMontserrat,
              fontWeight: FontWeight.w400,
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            prefixIcon: const Icon(
              Icons.vpn_key,
              color: Colors.black,
            ),
            contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          ),
          validator: MultiValidator(
            [
              RequiredValidator(
                errorText: 'Password is required',
              ),
              MinLengthValidator(
                5,
                errorText: 'Password must be at least 5 digits long',
              ),
              if (secondaryPasswordController != null)
                EqualsControllerValidator(
                  controller: secondaryPasswordController,
                  errorText: 'Passwords must be equal',
                ),
            ],
          ),
          isPassword: true,
        );
}

class PhoneField extends StringField {
  PhoneField({
    Key? key,
    required TextEditingController controller,
    required String hintText,
  }) : super(
          key: key,
          controller: controller,
          inputDecoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            hintStyle: TextStyle(color: Colors.grey[700]),
            filled: true,
            contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          ),
          hintText: hintText,
          validator: MultiValidator(
            [
              RequiredValidator(errorText: "Phone Required"),
              MinLengthValidator(10, errorText: "10 digits Required"),
              PatternValidator(r'^-?[0-9]+$', errorText: "Invalid Phone"),
            ],
          ),
        );
}

class AuthCodeField extends StringField {
  AuthCodeField({
    Key? key,
    required TextEditingController controller,
    required String hintText,
  }) : super(
          key: key,
          isPassword: true,
          controller: controller,
          inputDecoration: InputDecoration(
            hintText: hintText,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20.0),
              ),
            ),
            hintStyle: TextStyle(color: Colors.grey[700]),
            filled: true,
            contentPadding: const EdgeInsets.fromLTRB(30, 20, 20, 20),
          ),
          hintText: hintText,
          validator: MultiValidator(
            [
              RequiredValidator(errorText: "Required"),
              MinLengthValidator(2, errorText: "Required"),
            ],
          ),
        );
}

class EqualsControllerValidator extends FieldValidator<String?> {
  final TextEditingController controller;

  EqualsControllerValidator({
    required this.controller,
    required String errorText,
  }) : super(errorText);
  @override
  bool isValid(String? value) {
    return controller.text == value;
  }
}

class StringField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final bool isPassword;
  final InputDecoration inputDecoration;
  const StringField({
    Key? key,
    required this.controller,
    required this.hintText,
    required this.validator,
    this.isPassword = false,
    required this.inputDecoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.95,
      child: TextFormField(
        obscureText: isPassword,
        validator: validator,
        autofocus: false,
        textInputAction: TextInputAction.done,
        style: const TextStyle(color: Colors.black),
        controller: controller,
        decoration: inputDecoration,
      ),
    );
  }
}
