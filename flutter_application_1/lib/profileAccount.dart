import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 20),

          // Profile Image
          const CircleAvatar(
            radius: 50,
            child: Icon(Icons.person, size: 50),
          ),

          const SizedBox(height: 10),

          const Center(
            child: Text(
              "John Doe",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),

          const Center(
            child: Text("johndoe@email.com"),
          ),

          const SizedBox(height: 20),

          // Options
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Personal Information"),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Account Settings"),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          ListTile(
            leading: Icon(Icons.security),
            title: Text("Security"),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifications"),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          ListTile(
            leading: Icon(Icons.help),
            title: Text("Help & Support"),
            trailing: Icon(Icons.arrow_forward_ios, size: 16),
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text("Logout"),
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Transactions"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}