import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../services/notification_service.dart';
import '../services/settings_service.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../theme/app_theme_mode.dart';
import '../theme/app_assets.dart';
import '../widgets/app_section_header.dart';

class ParametresPage extends StatefulWidget {
  const ParametresPage({super.key});

  @override
  State<ParametresPage> createState() => _ParametresPageState();
}

class _ParametresPageState extends State<ParametresPage> {
  final SettingsService _settingsService = SettingsService();

  bool _isLoading = true;
  AppThemeMode _selectedTheme = AppThemeMode.green;
  bool _notificationsEnabled = SettingsService.defaultNotificationsEnabled;
  String _selectedLanguage = SettingsService.defaultLanguage;
  double _fontSize = SettingsService.defaultLyricsFontSize;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final theme = await _settingsService.getTheme();
    final language = await _settingsService.getLanguage();
    final notificationsEnabled = await _settingsService
        .getNotificationsEnabled();
    final fontSize = await _settingsService.getLyricsFontSize();

    if (!mounted) return;
    setState(() {
      _selectedTheme = theme;
      _selectedLanguage = language;
      _notificationsEnabled = notificationsEnabled;
      _fontSize = fontSize;
      _isLoading = false;
    });
  }

  String _getLanguageLabel(String val, AppLocalizations? l10n) {
    if (val == 'English') return l10n?.langueAnglais ?? 'English';
    if (val == 'system') return l10n?.langueSysteme ?? 'Langue du système';
    return l10n?.langueFrancais ?? 'Français';
  }

  String _getThemeLabel(AppThemeMode mode, AppLocalizations? l10n) {
    switch (mode) {
      case AppThemeMode.blue:
        return l10n?.themeBlue ?? 'Bleu';
      case AppThemeMode.purple:
        return l10n?.themePurple ?? 'Violet';
      case AppThemeMode.amber:
        return l10n?.themeAmber ?? 'Ambre';
      case AppThemeMode.green:
        return l10n?.themeGreen ?? 'Vert Nature';
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    return ListView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      children: [
        // Branding App Card Header
        Container(
          padding: const EdgeInsets.all(AppSpacing.lg),
          decoration: BoxDecoration(
            color: theme.colorScheme.primaryContainer.withValues(alpha: 0.5),
            borderRadius: AppRadius.xlBorder,
            border: Border.all(
              color: theme.colorScheme.primary.withValues(alpha: 0.2),
              width: 1.5,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 56,
                height: 56,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: AppColors.surface,
                  shape: BoxShape.circle,
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x0F000000),
                      blurRadius: 8,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: AppAssets.svg(AppAssets.logoMark, fit: BoxFit.contain),
              ),
              const SizedBox(width: AppSpacing.md),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      l10n?.appTitle ?? 'Cantiques du Message',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onPrimaryContainer,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      'Version 1.0.0 (Édition Graphique)',
                      style: TextStyle(
                        fontSize: 12,
                        color: theme.colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.xl),

        // Apparence Section Header
        AppSectionHeader(
          title: l10n?.apparenceTitle ?? 'Apparence',
          icon: Icons.palette_rounded,
        ),
        const SizedBox(height: AppSpacing.md),

        // Theme Selection Card
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
                color: theme.colorScheme.primaryContainer,
                borderRadius: AppRadius.mdBorder,
              ),
              child: Icon(
                Icons.color_lens_rounded,
                color: theme.colorScheme.primary,
                size: 20,
              ),
            ),
            title: Text(
              l10n?.themeTitle ?? 'Thème',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            subtitle: Text(
              _getThemeLabel(_selectedTheme, l10n),
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.textSecondary,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: _selectedTheme.primary,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    boxShadow: const [
                      BoxShadow(color: Colors.black26, blurRadius: 3),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                const Icon(
                  Icons.chevron_right_rounded,
                  color: AppColors.textMuted,
                ),
              ],
            ),
            onTap: _showThemeDialog,
          ),
        ),

        const SizedBox(height: AppSpacing.xxl),

        // Preferences Section Header
        AppSectionHeader(
          title: l10n?.preferencesTitle ?? 'Préférences',
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
                color: theme.colorScheme.primaryContainer,
                borderRadius: AppRadius.mdBorder,
              ),
              child: Icon(
                Icons.notifications_active_rounded,
                color: theme.colorScheme.primary,
                size: 20,
              ),
            ),
            title: Text(
              l10n?.notificationsTitle ?? 'Notifications',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            subtitle: Text(
              l10n?.notificationsSubtitle ??
                  'Recevoir des rappels et édifications quotidiennes',
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.textSecondary,
              ),
            ),
            value: _notificationsEnabled,
            onChanged: (value) async {
              setState(() {
                _notificationsEnabled = value;
              });
              await _settingsService.saveNotificationsEnabled(value);
              if (value) {
                await NotificationService.instance.requestPermission();
              }
              await NotificationService.instance.syncNotificationSchedule();
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
                color: theme.colorScheme.primaryContainer,
                borderRadius: AppRadius.mdBorder,
              ),
              child: Icon(
                Icons.language_rounded,
                color: theme.colorScheme.primary,
                size: 20,
              ),
            ),
            title: Text(
              l10n?.langueTitle ?? 'Langue d\'affichage',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            subtitle: Text(
              _getLanguageLabel(_selectedLanguage, l10n),
              style: const TextStyle(
                fontSize: 13,
                color: AppColors.textSecondary,
              ),
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
                      color: theme.colorScheme.primaryContainer,
                      borderRadius: AppRadius.mdBorder,
                    ),
                    child: Icon(
                      Icons.format_size_rounded,
                      color: theme.colorScheme.primary,
                      size: 20,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Text(
                      l10n?.tailleParolesDefault ??
                          'Taille des paroles par défaut',
                      style: const TextStyle(
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
                      color: theme.colorScheme.primaryContainer,
                      borderRadius: AppRadius.smBorder,
                    ),
                    child: Text(
                      '${_fontSize.toInt()} px',
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onPrimaryContainer,
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

        // A propos Section Header
        AppSectionHeader(
          title: l10n?.aProposTitle ?? 'À propos',
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
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: AppRadius.mdBorder,
                  ),
                  child: Icon(
                    Icons.system_update_rounded,
                    color: theme.colorScheme.primary,
                    size: 20,
                  ),
                ),
                title: Text(
                  l10n?.versionApp ?? 'Version de l\'application',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                subtitle: const Text(
                  '1.0.0 (Build 1)',
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.textSecondary,
                  ),
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
                    color: theme.colorScheme.primaryContainer,
                    borderRadius: AppRadius.mdBorder,
                  ),
                  child: Icon(
                    Icons.contact_mail_rounded,
                    color: theme.colorScheme.primary,
                    size: 20,
                  ),
                ),
                title: Text(
                  l10n?.contactDev ?? 'Contact développeur',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                subtitle: const Text(
                  'sadikiobedi@outlook.fr',
                  style: TextStyle(
                    fontSize: 13,
                    color: AppColors.textSecondary,
                  ),
                ),
              ),
            ],
          ),
        ),

        const SizedBox(height: AppSpacing.xxl),
      ],
    );
  }

  void _showThemeDialog() {
    final l10n = AppLocalizations.of(context);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n?.choisirTheme ?? 'Choisir le thème'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: AppThemeMode.values
              .map(
                (mode) =>
                    _themeTile(label: _getThemeLabel(mode, l10n), mode: mode),
              )
              .toList(),
        ),
      ),
    );
  }

  Widget _themeTile({required String label, required AppThemeMode mode}) {
    final isSelected = _selectedTheme == mode;
    final theme = Theme.of(context);

    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: AppRadius.mdBorder),
      leading: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: mode.primary,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2),
          boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 3)],
        ),
      ),
      title: Text(
        label,
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
          color: isSelected ? theme.colorScheme.primary : AppColors.textPrimary,
        ),
      ),
      trailing: isSelected
          ? Icon(Icons.check_circle_rounded, color: theme.colorScheme.primary)
          : null,
      onTap: () async {
        await _saveTheme(mode);
      },
    );
  }

  Future<void> _saveTheme(AppThemeMode mode) async {
    setState(() {
      _selectedTheme = mode;
    });
    await _settingsService.saveTheme(mode);
    if (!mounted) return;
    Navigator.pop(context);
  }

  void _showLanguageDialog() {
    final l10n = AppLocalizations.of(context);

    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n?.choisirLangue ?? 'Choisir la langue'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _languageTile(
              label: l10n?.langueFrancais ?? 'Français',
              value: 'Français',
            ),
            _languageTile(
              label: l10n?.langueAnglais ?? 'English',
              value: 'English',
            ),
            _languageTile(
              label: l10n?.langueSysteme ?? 'Langue du système',
              value: 'system',
            ),
          ],
        ),
      ),
    );
  }

  Widget _languageTile({required String label, required String value}) {
    final isSelected = _selectedLanguage == value;
    final theme = Theme.of(context);

    return ListTile(
      shape: RoundedRectangleBorder(borderRadius: AppRadius.mdBorder),
      title: Text(
        label,
        style: TextStyle(
          fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
          color: isSelected ? theme.colorScheme.primary : AppColors.textPrimary,
        ),
      ),
      trailing: isSelected
          ? Icon(Icons.check_circle_rounded, color: theme.colorScheme.primary)
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
