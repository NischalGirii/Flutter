import 'package:flutter/material.dart';

class SettingsNew extends StatefulWidget {
  const SettingsNew({super.key});

  @override
  State<SettingsNew> createState() => _SettingsNewState();
}

class _SettingsNewState extends State<SettingsNew> {
  // State variables for toggles
  bool _darkMode = true;
  bool _notifications = true;
  bool _biometricLogin = false;

  @override
  Widget build(BuildContext context) {
    // Custom purple color matching the toggles in the image
    const Color primaryPurple = Color(0xFF7A56D6);

    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA), // Slightly off-white background
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text(
          "Settings",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            _buildSectionHeader("Preferences"),
            const SizedBox(height: 8),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    _buildSwitchRow(
                      icon: Icons.dark_mode_outlined,
                      title: "Dark Mode",
                      value: _darkMode,
                      activeColor: primaryPurple,
                      onChanged: (val) => setState(() => _darkMode = val),
                    ),
                    const Divider(height: 1, indent: 50),
                    _buildSwitchRow(
                      icon: Icons.notifications_none_outlined,
                      title: "Notifications",
                      value: _notifications,
                      activeColor: primaryPurple,
                      onChanged: (val) => setState(() => _notifications = val),
                    ),
                    const Divider(height: 1, indent: 50),
                    _buildSwitchRow(
                      icon: Icons.fingerprint,
                      title: "Biometric Login",
                      value: _biometricLogin,
                      activeColor: primaryPurple,
                      onChanged: (val) => setState(() => _biometricLogin = val),
                    ),
                    const Divider(height: 1, indent: 50),
                    _buildDropdownRow(
                      icon: Icons.language,
                      title: "Language",
                      selectedValue: "English",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // --- DATE & TIME SECTION ---
            _buildSectionHeader("Date & Time"),
            const SizedBox(height: 8),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    _buildNavigationRow(
                      icon: Icons.calendar_today_outlined,
                      title: "Date",
                      trailingText: "25 May 2024",
                    ),
                    const Divider(height: 1, indent: 50),
                    _buildNavigationRow(
                      icon: Icons.access_time,
                      title: "Time",
                      trailingText: "10:30 AM",
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // --- GENERAL SECTION ---
            _buildSectionHeader("General"),
            const SizedBox(height: 8),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    _buildNavigationRow(icon: Icons.lock_outline, title: "Change Password"),
                    const Divider(height: 1, indent: 50),
                    _buildNavigationRow(icon: Icons.shield_outlined, title: "Privacy Policy"),
                    const Divider(height: 1, indent: 50),
                    _buildNavigationRow(icon: Icons.description_outlined, title: "Terms & Conditions"),
                    const Divider(height: 1, indent: 50),
                    _buildNavigationRow(icon: Icons.info_outline, title: "About App"),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),

            // --- DELETE ACCOUNT BUTTON ---
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton.icon(
                onPressed: () {
                  // Handle delete account action
                },
                icon: const Icon(Icons.delete_outline, color: Colors.red),
                label: const Text(
                  "Delete Account",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.redAccent, width: 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  // Helper: Section Headers
  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }

  // Helper: Rows with Toggle Switches
  Widget _buildSwitchRow({
    required IconData icon,
    required String title,
    required bool value,
    required Color activeColor,
    required ValueChanged<bool> onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.black87),
          const SizedBox(width: 12),
          Text(title, style: const TextStyle(fontSize: 15, color: Colors.black87)),
          const Spacer(),
          Switch(
            value: value,
            activeColor: Colors.white,
            activeTrackColor: activeColor,
            inactiveTrackColor: Colors.grey.shade300,
            inactiveThumbColor: Colors.white,
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }

  // Helper: Row for Dropdown selection
  Widget _buildDropdownRow({
    required IconData icon,
    required String title,
    required String selectedValue,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.black87),
          const SizedBox(width: 12),
          Text(title, style: const TextStyle(fontSize: 15, color: Colors.black87)),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Text(selectedValue, style: const TextStyle(fontSize: 14, color: Colors.black87)),
                const SizedBox(width: 4),
                const Icon(Icons.keyboard_arrow_down, size: 18, color: Colors.grey),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper: Standard Chevron Navigation Rows
  Widget _buildNavigationRow({
    required IconData icon,
    required String title,
    String? trailingText,
  }) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
        child: Row(
          children: [
            Icon(icon, color: Colors.black87),
            const SizedBox(width: 12),
            Text(title, style: const TextStyle(fontSize: 15, color: Colors.black87)),
            const Spacer(),
            if (trailingText != null)
              Text(
                trailingText,
                style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
              ),
            const SizedBox(width: 4),
            Icon(Icons.arrow_forward_ios, size: 14, color: Colors.grey.shade400),
          ],
        ),
      ),
    );
  }
}