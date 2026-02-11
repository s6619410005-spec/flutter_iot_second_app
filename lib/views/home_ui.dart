import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signin_ui.dart';
import 'signup_ui.dart';

class HomeUi extends StatelessWidget {
  const HomeUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 80.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'assets/images/logo.png',
                width: 250.0,
                height: 250.0,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 80.0),
            Text(
              'ยินดีต้อนรับชาว SAU',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800],
              ),
            ),
            Text(
              'Southeast Asia University',
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.blueGrey[800],
              ),
            ),
            Text(
              'Created by Sutidaa_05 SAU2026',
              style: GoogleFonts.itim(
                fontSize: 18.0,
                color: Colors.red[800],
              ),
            ),
            const SizedBox(height: 60.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SigninUi(),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    fixedSize: const Size(140.0, 50.0),
                    side: BorderSide(color: Colors.blueGrey[800]!),
                  ),
                  child: const Text('LOGIN'),
                ),
                const SizedBox(width: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignupUi(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(140.0, 50.0),
                    backgroundColor: Colors.blueGrey[800],
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text('SIGNUP'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
