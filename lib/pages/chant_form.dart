import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/chant_personnel.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';

/// Page formulaire pour ajouter / modifier un chant personnel.
class ChantFormPage extends StatefulWidget {
  final ChantPersonnel? initialChant;

  const ChantFormPage({super.key, this.initialChant});

  @override
  State<ChantFormPage> createState() => _ChantFormPageState();
}

class _ChantFormPageState extends State<ChantFormPage> {
  final _formKey = GlobalKey<FormState>();

  late final TextEditingController _titreController;
  late final TextEditingController _contenuController;
  late final TextEditingController _auteurController;

  bool get _isEditMode => widget.initialChant != null;

  @override
  void initState() {
    super.initState();

    _titreController = TextEditingController(
      text: widget.initialChant?.titre ?? '',
    );
    _contenuController = TextEditingController(
      text: widget.initialChant?.contenu ?? '',
    );
    _auteurController = TextEditingController(
      text: widget.initialChant?.auteur ?? '',
    );
  }

  @override
  void dispose() {
    _titreController.dispose();
    _contenuController.dispose();
    _auteurController.dispose();
    super.dispose();
  }

  String? _nonVideValidator(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppLocalizations.of(context)?.champObligatoire;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(_isEditMode ? l10n.modifierChant : l10n.nouveauChant),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.informationsChant,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),

                TextFormField(
                  controller: _titreController,
                  decoration: InputDecoration(
                    labelText: l10n.titreChant,
                    hintText: l10n.titreChantHint,
                    prefixIcon: const Icon(Icons.title_rounded),
                  ),
                  validator: _nonVideValidator,
                  textInputAction: TextInputAction.next,
                ),

                const SizedBox(height: AppSpacing.lg),

                TextFormField(
                  controller: _auteurController,
                  decoration: InputDecoration(
                    labelText: l10n.auteurChant,
                    hintText: l10n.auteurChantHint,
                    prefixIcon: const Icon(Icons.person_outline_rounded),
                  ),
                ),

                const SizedBox(height: AppSpacing.lg),

                TextFormField(
                  controller: _contenuController,
                  decoration: InputDecoration(
                    labelText: l10n.parolesContenuChant,
                    hintText: l10n.parolesChantHint,
                    prefixIcon: const Icon(Icons.notes_rounded),
                    alignLabelWithHint: true,
                  ),
                  validator: _nonVideValidator,
                  minLines: 8,
                  maxLines: 20,
                  keyboardType: TextInputType.multiline,
                ),

                const SizedBox(height: AppSpacing.xxl),

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.save_rounded),
                        label: Text(l10n.enregistrer),
                        onPressed: () async {
                          final form = _formKey.currentState;
                          if (form == null) return;
                          if (!form.validate()) return;

                          final now = DateTime.now();
                          final titre = _titreController.text.trim();
                          final contenu = _contenuController.text.trim();
                          final auteur = _auteurController.text.trim();

                          final result = ChantPersonnel(
                            id:
                                widget.initialChant?.id ??
                                now.microsecondsSinceEpoch.toString(),
                            titre: titre,
                            contenu: contenu,
                            auteur: auteur.isEmpty ? null : auteur,
                            dateCreation:
                                widget.initialChant?.dateCreation ?? now,
                            dateModification: now,
                          );

                          Navigator.pop(context, result);
                        },
                      ),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    OutlinedButton.icon(
                      icon: const Icon(Icons.close_rounded),
                      label: Text(l10n.annuler),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
