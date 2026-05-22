import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ParametresPage extends StatefulWidget {
  const ParametresPage({super.key});

  @override
  State<ParametresPage> createState() => _ParametresPageState();
}

class _ParametresPageState extends State<ParametresPage> {
  bool _notificationsEnabled = true;
  String _selectedLanguage = 'Français';
  double _fontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text(
          'Préférences',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        SwitchListTile(
          title: const Text('Notifications'),
          subtitle: const Text('Recevoir des notifications quotidiennes'),
          value: _notificationsEnabled,
          onChanged: (value) {
            setState(() {
              _notificationsEnabled = value;
            });
          },
        ),
        ListTile(
          title: const Text('Langue'),
          subtitle: Text(_selectedLanguage),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            _showLanguageDialog();
          },
        ),
        ListTile(
          title: const Text('Taille du texte'),
          subtitle: Slider(
            value: _fontSize,
            min: 12,
            max: 24,
            divisions: 6,
            onChanged: (value) {
              setState(() {
                _fontSize = value;
              });
            },
          ),
        ),
        const SizedBox(height: 30),
        const Text(
          'À propos',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        const ListTile(
          leading: Icon(Icons.info),
          title: Text('Version'),
          subtitle: Text('1.0.0'),
        ),
        const ListTile(
          leading: Icon(Icons.email),
          title: Text('Contact'),
          subtitle: Text('contact@cantiques.com'),
        ),
      ],
    );
  }

  void _showLanguageDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Choisir la langue'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('Français'),
              onTap: () {
                setState(() {
                  _selectedLanguage = 'Français';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('English'),
              onTap: () {
                setState(() {
                  _selectedLanguage = 'English';
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Swahili'),
              onTap: () {
                setState(() {
                  _selectedLanguage = 'Swahili';
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}