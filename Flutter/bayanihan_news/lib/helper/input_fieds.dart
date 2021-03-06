import 'package:bayanihan_news/helper/widgets.dart';
import 'package:bayanihan_news/services/validators.dart';
import 'package:flutter/material.dart';

Widget firstNameTextFormField(String _firstName) {
  return CustomTextField(
    icon: Icons.person,
    hint: "First Name",
    onSaved: (input) {
      _firstName = input;
    },
    validator: hasValueValidator,
    keyboardType: TextInputType.text,
  );
}

Widget lastNameTextFormField(String _lastName) {
  return CustomTextField(
    icon: Icons.person,
    hint: "Last Name",
    onSaved: (input) {
      _lastName = input;
    },
    validator: hasValueValidator,
    keyboardType: TextInputType.text,
  );
}

Widget emailTextFormField(String _email) {
  return CustomTextField(
    icon: Icons.email,
    hint: "Email",
    onSaved: (input) {
      _email = input;
    },
    validator: emailValidator,
    keyboardType: TextInputType.emailAddress,
  );
}

Widget phoneTextFormField(TextEditingController controller) {
  return CustomTextField(
    icon: Icons.phone,
    controller: controller,
    validator: phoneValidator,
    hint: "9xxxxxxxxx",
    keyboardType: TextInputType.text,
    prefix: '+63',
  );
}

Widget passwordTextFormField(String _password, TextEditingController _pass) {
  return CustomTextField(
    icon: Icons.lock,
    obsecure: true,
    controller: _pass,
    onSaved: (input) => _password = input,
    validator: (val) {
      if (val.isEmpty) return 'Empty';
      return null;
    },
    hint: "Password",
    keyboardType: TextInputType.text,
  );
}

Widget confirmPasswordTextFormField(String _confirmPassword,
    TextEditingController _confirmPass, TextEditingController _pass) {
  return CustomTextField(
    icon: Icons.lock,
    obsecure: true,
    controller: _confirmPass,
    onSaved: (
      input,
    ) =>
        _confirmPassword = input,
    validator: (val) {
      if (val.isEmpty) return 'Empty';
      if (val != _pass.text) return 'Not Match';
      return null;
    },
    hint: "Confirm Password",
    keyboardType: TextInputType.text,
  );
}

Widget addressTextFormField(String _address) {
  return CustomTextField(
    icon: Icons.place,
    hint: "Address",
    onSaved: (input) {
      _address = input;
    },
    validator: hasValueValidator,
    keyboardType: TextInputType.text,
  );
}
