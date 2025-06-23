import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Color.fromARGB(255, 253, 253, 253)),
        backgroundColor: Color.fromARGB(255, 19, 19, 19),
        elevation: 0,
        title: const Text(
          'Profile',
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.refresh, color: Color.fromARGB(255, 255, 255, 255)),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/profile.png"), 
            ),
            const SizedBox(height: 10),
            const Text(
              'Masabi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'aydi@cgmail.com',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.yellow[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text(
                  'Edit Profile',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 30),
            buildMenuItem(Icons.settings, 'Settings'),
            buildMenuItem(Icons.credit_card, 'Billing Details'),
            buildMenuItem(Icons.group, 'User Management'),
            buildMenuItem(Icons.info_outline, 'Information'),
            buildMenuItem(Icons.logout, 'Logout', iconColor: Colors.white),
          ],
        ),
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String title, {Color iconColor = Colors.amberAccent}) {
    return ListTile(
      leading: Icon(icon, color: iconColor),
      title: Text(title),
      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}
