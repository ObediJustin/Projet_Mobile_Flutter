import 'package:flutter/material.dart';

import '../models/chant_personnel.dart';

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

    _titreController = TextEditingController(text: widget.initialChant?.titre ?? '');
    _contenuController = TextEditingController(text: widget.initialChant?.contenu ?? '');
    _auteurController =
        TextEditingController(text: widget.initialChant?.auteur ?? '');
  }

  @override
  void dispose() {
    _titreController.dispose();
    _contenuController.dispose();
    _auteurController.dispose();
    super.dispose();
  }

  String? _nonVideValidator(String? value) {
    if (value == null) return 'Champ obligatoire';
    if (value.trim().isEmpty) return 'Champ obligatoire';
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(_isEditMode ? 'Modifier le chant' : 'Nouveau chant'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Informations du chant',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16),

                TextFormField(
                  controller: _titreController,
                  decoration: InputDecoration(
                    labelText: 'Titre',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    prefixIcon: const Icon(Icons.title),
                  ),
                  validator: _nonVideValidator,
                  textInputAction: TextInputAction.next,
                ),

                const SizedBox(height: 16),

                TextFormField(
                  controller: _auteurController,
                  decoration: InputDecoration(
                    labelText: 'Auteur (optionnel)',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    prefixIcon: const Icon(Icons.person_outline),
                  ),
                ),

                const SizedBox(height: 16),

                TextFormField(
                  controller: _contenuController,
                  decoration: InputDecoration(
                    labelText: 'Contenu',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    prefixIcon: const Icon(Icons.notes),
                  ),
                  validator: _nonVideValidator,
                  minLines: 8,
                  maxLines: 20,
                  keyboardType: TextInputType.multiline,
                ),

                const SizedBox(height: 24),

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          foregroundColor: Colors.black,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        icon: const Icon(Icons.save),
                        label: Text(_isEditMode ? 'Enregistrer' : 'Enregistrer'),
                        onPressed: () async {
                          final form = _formKey.currentState;
                          if (form == null) return;
                          if (!form.validate()) return;

                          final now = DateTime.now();
                          final titre = _titreController.text.trim();
                          final contenu = _contenuController.text.trim();
                          final auteur = _auteurController.text.trim();

                          final result = ChantPersonnel(
                            id: widget.initialChant?.id ?? now.microsecondsSinceEpoch.toString(),
                            titre: titre,
                            contenu: contenu,
                            auteur: auteur.isEmpty ? null : auteur,
                            dateCreation: widget.initialChant?.dateCreation ?? now,
                            dateModification: now,
                          );

                          Navigator.pop(context, result);
                        },
                      ),
                    ),
                    const SizedBox(width: 12),
                    OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      icon: const Icon(Icons.cancel),
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

