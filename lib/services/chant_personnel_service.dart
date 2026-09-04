import '../database/app_database.dart';
import '../models/chant_personnel.dart';

class ChantPersonnelService {
  Future<List<ChantPersonnel>> getAllChants() async {
    return AppDatabase.instance.getChantsPersonnels();
  }

  Future<ChantPersonnel?> getChantById(String id) async {
    return AppDatabase.instance.getChantPersonnelById(id);
  }

  Future<void> addChant(ChantPersonnel chant) async {
    final now = DateTime.now();
    final chantToSave = chant.id.isEmpty
        ? chant.copyWith(id: now.microsecondsSinceEpoch.toString())
        : chant;

    await AppDatabase.instance.insertChantPersonnel(
      chantToSave.copyWith(
        dateCreation: chantToSave.dateCreation,
        dateModification: now,
      ),
    );
  }

  Future<void> updateChant(ChantPersonnel chant) async {
    final existing = await getChantById(chant.id);
    if (existing == null) {
      throw Exception('Chant introuvable pour mise a jour (id=${chant.id}).');
    }

    await AppDatabase.instance.insertChantPersonnel(
      chant.copyWith(dateModification: DateTime.now()),
    );
  }

  Future<void> deleteChant(String id) async {
    await AppDatabase.instance.deleteChantPersonnel(id);
  }
}
