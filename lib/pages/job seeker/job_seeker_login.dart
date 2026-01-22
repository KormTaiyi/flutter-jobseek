import 'package:flutter/material.dart';
import 'package:jobseek/pages/job%20seeker/create_account.dart';
import 'package:jobseek/shared/auth/button.dart';
import 'package:jobseek/shared/auth/logo_auth.dart';
import 'package:jobseek/shared/auth/other_method.dart';
import 'package:jobseek/shared/themes.dart';
import 'package:flutter/services.dart';

class JobSeekerLogin extends StatefulWidget {
  const JobSeekerLogin({super.key});

  @override
  State<JobSeekerLogin> createState() => _JobSeekerLoginState();
}

class _JobSeekerLoginState extends State<JobSeekerLogin> {
  bool _obscurePassword = true;
  final List<String> loginIcons = [
    "assets/icons/email.png",
    "assets/icons/linkin.png",
    "assets/icons/google-icon.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Column(
              children: [
                LogoAuth(
                  title: "Welcome Back",
                  subtitle: "Please enter your details to sign in.",
                ),
                ShareButton(label: "Login"),
                _buildInputField(context),
                OtherMethod(title: "Other login method", icons: loginIcons),
                Text("Don't have an account yet?"),
                GestureDetector(
                  onTap: () => {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => CreaetAccount()),
                    ),
                  },
                  child: Text(
                    "Create new account",
                    style: TextStyle(
                      color: AppColors.primary,
                      decorationColor: Colors.black,
                      decoration: TextDecoration.underline,
                      decorationThickness: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          keyboardType: TextInputType.phone,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            hintText: "Phone number",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.secondary),
            ),
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Phone number is required";
            }
            return null;
          },
        ),
        const SizedBox(height: 20),
        TextFormField(
          obscureText: _obscurePassword,
          decoration: InputDecoration(
            hintText: "Password",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: AppColors.secondary),
            ),
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

        const SizedBox(height: 8),

        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: () {},
            child: Text(
              "Forgot password?",
              style: TextStyle(
                color: AppColors.primary,
                fontSize: AppFonts.body,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
