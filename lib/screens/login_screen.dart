import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 0, left: 24, right: 24),
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 4,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Sign in to your Account",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Text(
              "Enter your email and password to log in",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 33, bottom: 8),
              child: Text(
                "Email",
              ),
            ),
            // Widget: TextField "Email"
            // ↓ ↓ ↓ ↓ ↓ ↓
            TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            // Widget: label/tulisan Password untuk TextField "Password"
            // ↓ ↓ ↓ ↓ ↓ ↓
            const Padding(
              padding: EdgeInsets.only(top: 16, bottom: 8),
              child: Text("Password"),
            ),
            // Widget: TextField "Password"
            // ↓ ↓ ↓ ↓ ↓ ↓
            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
            // Widget: text/tulisan "Forgot Password?"
            // ↓ ↓ ↓ ↓ ↓ ↓
            const Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(top: 16 + 8),
                child: Text(
                  "Forgot Password?",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // Widget: untuk membuat button Login
            // ↓ ↓ ↓ ↓ ↓ ↓
            Container(
              height: 82,
              width: double.maxFinite,
              padding: const EdgeInsets.only(top: 24),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: Colors.blue,
                ),
                // Fungsi: aksi dari tombol yang telah dipencet
                // ↓↓↓↓↓↓
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                child: const Text("Login"),
              ),
            ),
            // Widget: text/tulisan "Or"
            // ↓ ↓ ↓ ↓ ↓ ↓
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Or",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            // Widget: untuk membuat tombol "Continue with Google"
            // ↓ ↓ ↓ ↓ ↓ ↓
            SizedBox(
              height: 57,
              width: double.maxFinite,
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(
                    color: Color.fromARGB(255, 238, 231, 231),
                  ),
                  foregroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  backgroundColor: Colors.transparent,
                ),
                onPressed: () {},
                icon: Image.asset('assets/icons/google.png'),
                label: const Text("Continue with Google"),
              ),
            ),
            // Widget: untuk membuat tulisan "Don't have an account?..."
            // ↓ ↓ ↓ ↓ ↓ ↓
            Expanded(
              flex: 3,
              child: Align(
                alignment: Alignment.center,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(color: Colors.black),
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.only(left: 5),
                        ),
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
