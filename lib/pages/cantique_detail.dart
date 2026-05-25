import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:share_plus/share_plus.dart';

import '../models/cantique.dart';
import '../models/chant_personnel.dart';
import '../services/chant_personnel_service.dart';
import '../services/favorite_service.dart';

class CantiqueDetailPage extends StatefulWidget {
  final Cantique cantique;

  const CantiqueDetailPage({super.key, required this.cantique});

  @override
  State<CantiqueDetailPage> createState() => _CantiqueDetailPageState();
}

class _CantiqueDetailPageState extends State<CantiqueDetailPage>
    with SingleTickerProviderStateMixin {
  late final FavoriteService _favoriteService;

  bool _isFavorite = false;
  double _fontSize = 16.0;

  final ChantPersonnelService _chantPersonnelService = ChantPersonnelService();

  late final AnimationController _fadeController;
  late final Animation<double> _fadeAnimation;

  // La page est non-scrollable : seul ce scroll (paroles) est actif.
  final ScrollController _parolesScrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _favoriteService = FavoriteService();
    _initFavorites();
    _loadFontSize();

    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 450),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeOutCubic,
    );
    _fadeController.forward();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _parolesScrollController.dispose();
    super.dispose();
  }

  Future<void> _initFavorites() async {
    await _favoriteService.loadFavorites();
    if (!mounted) return;
    setState(() {
      _isFavorite = _favoriteService.isFavorite(widget.cantique.id);
    });
  }

  Future<void> _loadFontSize() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getDouble('chant_paroles_font_size');
    if (value != null && mounted) {
      setState(() => _fontSize = value);
    }
  }

  Future<void> _saveFontSize(double value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('chant_paroles_font_size', value);
  }

  Future<void> _toggleFavorite() async {
    await _favoriteService.toggleFavorite(widget.cantique.id);
    if (!mounted) return;
    setState(() => _isFavorite = !_isFavorite);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          _isFavorite ? 'Ajouté aux favoris' : 'Retiré des favoris',
        ),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  String _buildShareText() {
    // Contrainte: on garde numéro + collection pour le partage.
    return '${widget.cantique.titre}\n'
        'Numéro : ${widget.cantique.numero}\n'
        'Collection : ${widget.cantique.collection}\n\n'
        '${widget.cantique.contenu}';
  }

  Future<void> _copyToClipboard() async {
    await Clipboard.setData(ClipboardData(text: _buildShareText()));
    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Paroles copiées'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  Future<void> _share() async {
    await Share.share(_buildShareText(), subject: widget.cantique.titre);
  }

  void _showFontSizeSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        final current = _fontSize;

        return Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  const Text(
                    'Taille des paroles',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  const Spacer(),
                  Text(
                    current.toStringAsFixed(0),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade700,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 14),
              Slider(
                value: _fontSize,
                min: 12,
                max: 26,
                divisions: 14,
                label: _fontSize.toStringAsFixed(0),
                onChanged: (v) {
                  setState(() => _fontSize = v.toDouble());
                },
                onChangeEnd: (v) {
                  _saveFontSize(v.toDouble());
                },
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        final next = (_fontSize - 1).clamp(12, 26).toDouble();
                        setState(() => _fontSize = next);
                        _saveFontSize(next);
                      },
                      icon: const Icon(Icons.remove),
                      label: const Text('Moins'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade200,
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        final next = (_fontSize + 1).clamp(12, 26).toDouble();
                        setState(() => _fontSize = next);
                        _saveFontSize(next);
                      },
                      icon: const Icon(Icons.add),
                      label: const Text('Plus'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        foregroundColor: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
            ],
          ),
        );
      },
    );
  }

  Future<void> _addToPersonalChants() async {
    final chantToAdd = ChantPersonnel(
      id: '',
      titre: widget.cantique.titre,
      contenu: widget.cantique.contenu,
      auteur: widget.cantique.auteur,
      dateCreation: DateTime.now(),
      dateModification: DateTime.now(),
    );

    final all = await _chantPersonnelService.getAllChants();
    final already = all.any(
      (c) => c.titre == chantToAdd.titre && c.contenu == chantToAdd.contenu,
    );

    if (already) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Déjà ajouté aux chants personnels'),
          duration: Duration(seconds: 1),
        ),
      );
      return;
    }

    await _chantPersonnelService.addChant(chantToAdd);

    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Ajouté aux chants personnels'),
        duration: Duration(seconds: 1),
      ),
    );
  }

  Widget _quickAction({
    required IconData icon,
    required String trailingEmoji,
    required VoidCallback onTap,
    required bool enabled,
    required Color iconColor,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: enabled ? onTap : null,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        decoration: BoxDecoration(
          color: enabled ? Colors.white.withOpacity(0.9) : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 10,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 20, color: iconColor),
            const SizedBox(width: 8),
            Text(trailingEmoji, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cantique.titre),
        backgroundColor: Colors.amber,
      ),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: SafeArea(
          child: Column(
            children: [
              // Card paroles: seule zone scrollable et centrée.
              Expanded(
                child: Center(
                  child: SingleChildScrollView(
                    controller: _parolesScrollController,
                    padding: const EdgeInsets.all(16),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 800),
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: SelectableText(
                            widget.cantique.contenu,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontSize: _fontSize,
                              height: 1.8,
                              color: Colors.grey.shade900,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              // Barre d’actions fixe en bas, placée après la card paroles.
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: SizedBox(
                    height: 56,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _quickAction(
                          icon: _isFavorite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          trailingEmoji: _isFavorite ? '❤️' : '🤍',
                          iconColor: _isFavorite ? Colors.red : Colors.grey,
                          enabled: true,
                          onTap: _toggleFavorite,
                        ),
                        const SizedBox(width: 10),
                        _quickAction(
                          icon: Icons.copy,
                          trailingEmoji: '📋',
                          iconColor: Colors.blueGrey,
                          enabled: true,
                          onTap: _copyToClipboard,
                        ),
                        const SizedBox(width: 10),
                        _quickAction(
                          icon: Icons.share,
                          trailingEmoji: '📤',
                          iconColor: Colors.blue,
                          enabled: true,
                          onTap: _share,
                        ),
                        const SizedBox(width: 10),
                        _quickAction(
                          icon: Icons.text_fields,
                          trailingEmoji: '🔎',
                          iconColor: Colors.brown,
                          enabled: true,
                          onTap: _showFontSizeSheet,
                        ),
                        const SizedBox(width: 10),
                        _quickAction(
                          icon: Icons.star_border,
                          trailingEmoji: '⭐',
                          iconColor: Colors.amber.shade800,
                          enabled: true,
                          onTap: _addToPersonalChants,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Card auteur: en bas.
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (widget.cantique.auteur != null)
                          ListTile(
                            dense: true,
                            leading: const Icon(Icons.person_outline),
                            title: const Text('Auteur'),
                            subtitle: Text(widget.cantique.auteur!),
                          ),
                      ],
                    ),
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
