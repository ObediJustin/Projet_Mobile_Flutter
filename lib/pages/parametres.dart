import 'package:flutter/material.dart';

import '../services/settings_service.dart';

class ParametresPage extends StatefulWidget {
  const ParametresPage({super.key});

  @override
  State<ParametresPage> createState() => _ParametresPageState();
}

class _ParametresPageState extends State<ParametresPage> {
  final SettingsService _settingsService = SettingsService();

  bool _isLoading = true;
  bool _notificationsEnabled = SettingsService.defaultNotificationsEnabled;
  String _selectedLanguage = SettingsService.defaultLanguage;
  double _fontSize = SettingsService.defaultLyricsFontSize;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final language = await _settingsService.getLanguage();
    final notificationsEnabled = await _settingsService
        .getNotificationsEnabled();
    final fontSize = await _settingsService.getLyricsFontSize();

    if (!mounted) return;
    setState(() {
      _selectedLanguage = language;
      _notificationsEnabled = notificationsEnabled;
      _fontSize = fontSize;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: Colors.amber),
      );
    }

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
          onChanged: (value) async {
            setState(() {
              _notificationsEnabled = value;
            });
            await _settingsService.saveNotificationsEnabled(value);
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
            min: SettingsService.minLyricsFontSize,
            max: SettingsService.maxLyricsFontSize,
            divisions: 14,
            label: _fontSize.toStringAsFixed(0),
            onChanged: (value) async {
              setState(() {
                _fontSize = value;
              });
              await _settingsService.saveLyricsFontSize(value);
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
              onTap: () async {
                await _saveLanguage(SettingsService.defaultLanguage);
              },
            ),
            ListTile(
              title: const Text('English'),
              onTap: () async {
                await _saveLanguage('English');
              },
            ),
            ListTile(
              title: const Text('Swahili'),
              onTap: () async {
                await _saveLanguage('Swahili');
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _saveLanguage(String language) async {
    setState(() {
      _selectedLanguage = language;
    });
    await _settingsService.saveLanguage(language);
    if (!mounted) return;
    Navigator.pop(context);
  }
}
