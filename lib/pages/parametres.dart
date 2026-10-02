import 'package:flutter/material.dart';

import '../services/settings_service.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../widgets/app_section_header.dart';

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
        child: CircularProgressIndicator(),
      );
    }

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        const AppSectionHeader(
          title: 'Préférences',
          icon: Icons.tune_rounded,
        ),
        const SizedBox(height: AppSpacing.md),

        // Notifications Card
        Container(
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: AppRadius.lgBorder,
            border: Border.all(color: AppColors.borderLight, width: 1),
          ),
          child: SwitchListTile(
            secondary: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: AppRadius.mdBorder,
              ),
              child: const Icon(
                Icons.notifications_active_rounded,
                color: AppColors.primary,
                size: 20,
              ),
            ),
            title: const Text(
              'Notifications',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            subtitle: const Text(
              'Recevoir des rappels et édifications quotidiennes',
              style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
            ),
            value: _notificationsEnabled,
            onChanged: (value) async {
              setState(() {
                _notificationsEnabled = value;
              });
              await _settingsService.saveNotificationsEnabled(value);
            },
          ),
        ),

        const SizedBox(height: AppSpacing.md),

        // Language Card
        Container(
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: AppRadius.lgBorder,
            border: Border.all(color: AppColors.borderLight, width: 1),
          ),
          child: ListTile(
            leading: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: AppRadius.mdBorder,
              ),
              child: const Icon(
                Icons.language_rounded,
                color: AppColors.primary,
                size: 20,
              ),
            ),
            title: const Text(
              'Langue d\'affichage',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            subtitle: Text(
              _selectedLanguage,
              style: const TextStyle(fontSize: 13, color: AppColors.textSecondary),
            ),
            trailing: const Icon(
              Icons.chevron_right_rounded,
              color: AppColors.textMuted,
            ),
            onTap: _showLanguageDialog,
          ),
        ),

        const SizedBox(height: AppSpacing.md),

        // Lyrics Font Size Card
        Container(
          padding: const EdgeInsets.all(AppSpacing.lg),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: AppRadius.lgBorder,
            border: Border.all(color: AppColors.borderLight, width: 1),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppColors.primaryLight,
                      borderRadius: AppRadius.mdBorder,
                    ),
                    child: const Icon(
                      Icons.format_size_rounded,
                      color: AppColors.primary,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  const Expanded(
                    child: Text(
                      'Taille des paroles par défaut',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primaryLight,
                      borderRadius: AppRadius.smBorder,
                    ),
                    child: Text(
                      '${_fontSize.toInt()} px',
                      style: const TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryDark,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSpacing.md),
              Slider(
                value: _fontSize,
                min: SettingsService.minLyricsFontSize,
                max: SettingsService.maxLyricsFontSize,
                divisions: 14,
                label: '${_fontSize.toInt()} px',
                onChanged: (value) async {
                  setState(() {
                    _fontSize = value;
                  });
                  await _settingsService.saveLyricsFontSize(value);
                },
              ),
            ],
          ),
        ),

        const SizedBox(height: AppSpacing.xxl),

        const AppSectionHeader(
          title: 'À propos',
          icon: Icons.info_outline_rounded,
        ),
        const SizedBox(height: AppSpacing.md),

        Container(
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: AppRadius.lgBorder,
            border: Border.all(color: AppColors.borderLight, width: 1),
          ),
          child: Column(
            children: [
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.primaryLight,
                    borderRadius: AppRadius.mdBorder,
                  ),
                  child: const Icon(
                    Icons.system_update_rounded,
                    color: AppColors.primary,
                    size: 20,
                  ),
                ),
                title: const Text(
                  'Version de l\'application',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                subtitle: const Text(
                  '1.0.0 (Build 1)',
                  style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                child: Divider(),
              ),
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.primaryLight,
                    borderRadius: AppRadius.mdBorder,
                  ),
                  child: const Icon(
                    Icons.contact_mail_rounded,
                    color: AppColors.primary,
                    size: 20,
                  ),
                ),
                title: const Text(
                  'Contact développeur',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                subtitle: const Text(
                  'sadikiobedi@outlook.fr',
                  style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: AppSpacing.xxl),
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
            _languageTile(
              label: 'Français',
              value: SettingsService.defaultLanguage,
            ),
            _languageTile(
              label: 'English',
              value: 'English',
            ),
            _languageTile(
              label: 'Swahili',
              value: 'Swahili',
            ),
          ],
        ),
      ),
    );
  }

  Widget _languageTile({required String label, required String value}) {
    final isSelected = _selectedLanguage == value;

    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: AppRadius.mdBorder),
      title: Text(
        label,
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
          color: isSelected ? AppColors.primary : AppColors.textPrimary,
        ),
      ),
      trailing: isSelected
          ? const Icon(Icons.check_circle_rounded, color: AppColors.primary)
          : null,
      onTap: () async {
        await _saveLanguage(value);
      },
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
