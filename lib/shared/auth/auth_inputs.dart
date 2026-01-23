import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final Color inputFormBgColor = const Color(0xFFE3E3E3);

// Input phonenumber
class InputPhoneNumber extends StatelessWidget {
  const InputPhoneNumber({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        fillColor: inputFormBgColor,
        filled: true,
        border: InputBorder.none,
        hintText: "Phone Number",
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Phone number is required";
        }
        return null;
      },
    );
  }
}

// Input name
class InputName extends StatelessWidget {
  const InputName({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Full name",
        fillColor: inputFormBgColor,
        filled: true,
        border: InputBorder.none,
      ),
    );
  }
}

class InputEmail extends StatelessWidget {
  const InputEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

// Input password
class InputPassword extends StatefulWidget {
  const InputPassword({super.key});

  @override
  State<InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          obscureText: _obscurePassword,
          decoration: InputDecoration(
            hintText: "Password",
            fillColor: inputFormBgColor,
            filled: true,
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Password is required";
            }
            return null;
          },
        ),
      ],
    );
  }
}

// Confirm password
class ConfirmPassword extends StatefulWidget {
  const ConfirmPassword({super.key});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          obscureText: _obscurePassword,
          decoration: InputDecoration(
            hintText: "Password",
            fillColor: inputFormBgColor,
            filled: true,
            border: InputBorder.none,
            suffixIcon: IconButton(
              icon: Icon(
                _obscurePassword ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  _obscurePassword = !_obscurePassword;
                });
              },
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Password is required";
            }
            return null;
          },
        ),
      ],
    );
  }
}
