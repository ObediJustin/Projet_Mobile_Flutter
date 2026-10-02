import '../database/app_database.dart';
import '../models/cantique.dart';

class RecentCantiqueService {
  RecentCantiqueService._();
  static final RecentCantiqueService instance = RecentCantiqueService._();

  Future<void> recordView(String cantiqueId) async {
    if (cantiqueId.trim().isEmpty) return;
    await AppDatabase.instance.recordRecentlyViewedCantique(cantiqueId);
  }

  Future<List<Cantique>> getRecentlyViewedCantiques({int limit = 5}) async {
    return AppDatabase.instance.getRecentlyViewedCantiques(limit: limit);
  }
}
