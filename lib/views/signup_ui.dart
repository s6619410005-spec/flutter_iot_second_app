import 'package:flutter/material.dart';

class SignupUi extends StatefulWidget {
  const SignupUi({super.key});

  @override
  State<SignupUi> createState() => _SignupUiState();
}

class _SignupUiState extends State<SignupUi> {
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
                    width: 180, height: 180),
              ),
              const Text('Get On Board!',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              const Text('Create your profile to start your journey.',
                  style: TextStyle(fontSize: 15, color: Colors.black87)),
              const SizedBox(height: 25),
              _buildTextField(Icons.person_outline, 'Full Name'),
              const SizedBox(height: 15),
              _buildTextField(Icons.email_outlined, 'E-Mail'),
              const SizedBox(height: 15),
              _buildTextField(Icons.phone_outlined, 'Phone No'),
              const SizedBox(height: 15),
              _buildTextField(Icons.fingerprint, 'Password', obscure: true),
              const SizedBox(height: 30),
              _buildPrimaryButton('SIGNUP', () {}),
              const SizedBox(height: 15),
              const Center(
                  child: Text("OR", style: TextStyle(color: Colors.grey))),
              const SizedBox(height: 15),
              _buildGoogleButton(() {}),
              const SizedBox(height: 20),
              _buildFooterText("Already have an Account? ", "LOGIN", () {
                Navigator.pop(context);
              }),
            ],
          ),
        ),
      ),
    );
  }

  // --- Widgets ย่อย (เหมือนกับหน้า Signin เพื่อความคุมโทน) ---
  Widget _buildTextField(IconData icon, String hint, {bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.black87),
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
          const Text('SIGN-IN WITH GOOGLE',
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
