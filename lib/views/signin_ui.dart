import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SigninUi extends StatefulWidget {
  const SigninUi({super.key});

  @override
  State<SigninUi> createState() => _SigninUiState();
}

class _SigninUiState extends State<SigninUi> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new, size: 28),
                onPressed: () => Navigator.pop(context),
              ),
              Center(
                child: Image.asset('assets/images/logo.png',
                    width: 200, height: 200),
              ),
              const Text('Welcome Back,',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const Text('Make it work, make it right, make it fast.',
                  style: TextStyle(fontSize: 15, color: Colors.black87)),
              const SizedBox(height: 25),
              _buildTextField(Icons.person_outline, 'E-Mail'),
              const SizedBox(height: 15),
              _buildTextField(
                FontAwesomeIcons.fingerprint,
                'Password',
                obscure: _isObscure,
                isPassword: true,
                onToggle: () => setState(() => _isObscure = !_isObscure),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forget Password?',
                      style: TextStyle(color: Colors.blue)),
                ),
              ),
              const SizedBox(height: 10),
              _buildPrimaryButton('LOGIN', () {}),
              const SizedBox(height: 15),
              const Center(
                  child: Text("OR", style: TextStyle(color: Colors.grey))),
              const SizedBox(height: 15),
              _buildGoogleButton(() {}),
              const SizedBox(height: 20),
              _buildFooterText("Don't have an Account? ", "Signup", () {
                // ไปหน้า Signup
              }),
            ],
          ),
        ),
      ),
    );
  }

  // --- Widgets ย่อยที่ใช้ร่วมกัน ---
  Widget _buildTextField(IconData icon, String hint,
      {bool obscure = false, bool isPassword = false, VoidCallback? onToggle}) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.black87),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(obscure ? Icons.visibility_off : Icons.visibility),
                onPressed: onToggle,
              )
            : null,
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        contentPadding: const EdgeInsets.symmetric(vertical: 18),
      ),
    );
  }

  Widget _buildPrimaryButton(String text, VoidCallback onPressed) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        minimumSize: const Size(double.infinity, 55),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(text,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildGoogleButton(VoidCallback onPressed) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, 55),
        side: const BorderSide(color: Colors.black12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/googlelogo.png', height: 22),
          const SizedBox(width: 10),
          const Text('Sign-In with Google',
              style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }

  Widget _buildFooterText(String text, String actionText, VoidCallback onTap) {
    return Center(
      child: TextButton(
        onPressed: onTap,
        child: Text.rich(TextSpan(
          text: text,
          style: const TextStyle(color: Colors.black54),
          children: [
            TextSpan(
                text: actionText,
                style: const TextStyle(
                    color: Colors.blue, fontWeight: FontWeight.bold))
          ],
        )),
      ),
    );
  }
}
