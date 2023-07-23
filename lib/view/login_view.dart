import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ritmacrm/view/main_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f9fd),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, top: 20, bottom: 20),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(60.0),
                          child: Image.asset(width: 60, height: 60, 'assets/images/ritma.crm.jpg')),
                    ),
                    Text(
                      'Ritma Flex CRM',
                      style: GoogleFonts.nunitoSans(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: const Color(0xff3a89ff),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25.0, top: 150, left: 25, bottom: 30),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white,
                  ),
                  width: 360,
                  height: 500,
                  child: Column(
                    children: [
                      const SizedBox(height: 40),
                      Text(
                        "Sign In to Ritma Flex CRM",
                        style: GoogleFonts.nunitoSans(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 20, top: 10, bottom: 10),
                        child: SizedBox(
                          height: 50,
                          width: 250,
                          child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                labelText: "Kullanıcı Adı",
                              ),
                              controller: usernameController,
                              obscureText: false),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0, left: 20, top: 10, bottom: 10),
                        child: SizedBox(
                          height: 50,
                          width: 250,
                          child: TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                                labelText: "Şifre",
                              ),
                              controller: passwordController,
                              obscureText: true),
                        ),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            checkColor: Colors.white,
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          const Text('Remember me', style: TextStyle(fontSize: 14, color: Colors.black87)),
                          const SizedBox(width: 20),
                          Text('Forgot Password?', style: TextStyle(fontSize: 14, color: Colors.grey[500])),
                        ],
                      ),
                      const SizedBox(height: 25),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff3a89ff),
                          fixedSize: const Size(250, 50),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => const MainView()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Sign In',
                              style: GoogleFonts.nunitoSans(
                                  fontWeight: FontWeight.w900, fontSize: 16, color: Colors.white),
                            ), // <-- Text
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(
                              // <-- Icon
                              Icons.arrow_forward_rounded,
                              size: 28.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 30),
                          Text(
                            "Don't have an account",
                            style: GoogleFonts.nunitoSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 16,
                              color: const Color(0xff3a89ff),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
