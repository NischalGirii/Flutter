import 'package:flutter/material.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
bool _notifications = true;
bool _darkMode = false;
bool _agreeTerms = true;
bool _subscribeNewsletter = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Setting'),
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.person_outline),
      ),

      


      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Icon(Icons.account_circle_outlined, size: 100, color: Colors.blueGrey,),

            ),

            const SizedBox(height: 20),

            const Text("Username", style: TextStyle(fontWeight: FontWeight.bold)),
            TextFormField(
              initialValue: 'flutter_student',
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 15),

            const Text("Email", style: TextStyle(fontWeight: FontWeight.bold)),
            TextFormField(
              decoration: const InputDecoration(
                hintText: 'Enter email...',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            SwitchListTile(
              title: const Text("Notification"),
              secondary: const Icon(Icons.notifications_none),
              value: _notifications,
              onChanged: (val) => setState(() => _notifications = val,),
            ),

            SwitchListTile(
              title: const Text("Dark mode"),
              secondary: const Icon(Icons.dark_mode_outlined),
              value: _darkMode,
              onChanged: (val) => setState(() => _darkMode = val),
            ),
            
            CheckboxListTile(
              title: const Text("I agree to terms & conditions"),
              controlAffinity: ListTileControlAffinity.leading,
              value: _agreeTerms,
              onChanged: (val) => setState(() => _agreeTerms = val!),
            ),
            CheckboxListTile(
              title: const Text("Subscribe to newsletter"),
              controlAffinity: ListTileControlAffinity.leading,
              value: _subscribeNewsletter,
              onChanged: (val) => setState(() => _subscribeNewsletter = val!),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  side: const BorderSide(color: Colors.blue, style: BorderStyle.solid), // Use 'dotted' package for real dots
                ),
                icon: const Icon(Icons.image_outlined),
                label: const Text("Tap to choose a profile photo"),
                onPressed: () {},
              ),
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                // Handle save logic
              },
              child: const Text("Save Changes"),
            ),

            
          ]
        )

        
        
      )
    );
  }
}