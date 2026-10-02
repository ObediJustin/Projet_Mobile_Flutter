import 'package:flutter/material.dart';

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
      return 'Ce champ est obligatoire';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_isEditMode ? 'Modifier le chant' : 'Nouveau chant'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Informations du chant',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: AppSpacing.lg),

                TextFormField(
                  controller: _titreController,
                  decoration: const InputDecoration(
                    labelText: 'Titre du chant',
                    hintText: 'Ex: Mon Dieu est grand',
                    prefixIcon: Icon(Icons.title_rounded),
                  ),
                  validator: _nonVideValidator,
                  textInputAction: TextInputAction.next,
                ),

                const SizedBox(height: AppSpacing.lg),

                TextFormField(
                  controller: _auteurController,
                  decoration: const InputDecoration(
                    labelText: 'Auteur (optionnel)',
                    hintText: 'Ex: Auteur inconnu',
                    prefixIcon: Icon(Icons.person_outline_rounded),
                  ),
                ),

                const SizedBox(height: AppSpacing.lg),

                TextFormField(
                  controller: _contenuController,
                  decoration: const InputDecoration(
                    labelText: 'Paroles / Contenu du chant',
                    hintText: 'Saisissez les paroles du chant ici...',
                    prefixIcon: Icon(Icons.notes_rounded),
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
                        label: const Text('Enregistrer'),
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
                      label: const Text('Annuler'),
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
