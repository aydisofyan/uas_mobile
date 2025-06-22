import 'package:flutter/material.dart';
import 'package:uas_mobile/navigation.dart';
// import 'homepage.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', 
      routes: {
        '/login': (context) => const LoginPage(),
        '/beranda': (context) => const NavigationPage(), // Tambahkan ini
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _HomePageState();
}

class _HomePageState extends State<LoginPage> {
  final TextEditingController _phoneController = TextEditingController();
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 19, 19, 19),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 250),
            Center(
              child: Image.asset(
                'assets/logo.png',
                height: 200,
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Silahkan Login Menggunakan Email Kamu',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'example@gmail.com',
                  hintStyle: const TextStyle(color: Color.fromARGB(255, 11, 11, 11)),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 165, 165, 165),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Checkbox(
                    value: _isChecked,
                    onChanged: (val) {
                      setState(() {
                        _isChecked = val ?? false;
                      });
                    },
                    activeColor: const Color(0xFFF44336),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(fontSize: 14),
                          children: [
                            TextSpan(
                              text: 'Saya menyetujui ',
                              style: TextStyle(color: Colors.white),
                            ),
                            TextSpan(
                              text: 'syarat, ketentuan',
                              style: TextStyle(color: Color(0xFFF44336)),
                            ),
                            TextSpan(
                              text: ', dan ',
                              style: TextStyle(color: Colors.white),
                            ),
                            TextSpan(
                              text: 'privasi',
                              style: TextStyle(color: Colors.red),
                            ),
                            TextSpan(
                              text: '\nCookie',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                onPressed: () {
                    if (_isChecked) {
                      print('Navigasi ke Beranda');
                      Navigator.pushReplacementNamed(context, '/beranda');
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Silakan isi Email kamu dan setujui syarat dan ketentuan.'),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 165, 165, 165),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'MASUK',
                    style: TextStyle(
                      color: Color.fromARGB(255, 23, 23, 23),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Atau masuk menggunakan',
              style: TextStyle(color: Colors.white54, fontSize: 14),
            ),

            SizedBox(height: 12),


Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login dengan Google belum tersedia.')),
        );
      },
      child: Image.asset(
        'assets/google.png',
        width: 50,
        height: 50,
      ),
    ),
    SizedBox(width: 20),
    GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Login dengan Facebook belum tersedia.')),
        );
      },
      child: Image.asset(
        'assets/facebook.png',
        width: 35,
        height: 35,
      ),
    ),
  ],
),

          ],
        ),
      ),
    );
  }
}
