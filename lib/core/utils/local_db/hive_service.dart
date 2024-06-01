// import 'dart:developer';

// import 'package:hive/hive.dart';
// import 'package:hive_flutter/adapters.dart';
// import 'package:path_provider/path_provider.dart';

// import '../../../features/home/data/model/all_pets_data_model.dart';
// import '../../../features/wishlist/data/models/wishlist_model.dart';

// class HiveService {
//   static Future<void> init() async {
//     final appDocumentDir = await getApplicationDocumentsDirectory();
//     Hive
//       ..init(appDocumentDir.path)
//       ..registerAdapter(AllPetsDataModelAdapter())
//       ..registerAdapter(WishListModelAdapter());
//   }

//   Future<Box<WishListModel>> _openBox(String boxName) async {
//     if (!Hive.isBoxOpen(boxName)) {
//       return Hive.openBox<WishListModel>(boxName);
//     } else {
//       return Hive.box<WishListModel>(boxName);
//     }
//   }

//   Future<void> saveWishList(
//       {required String key, required WishListModel data}) async {
//     final box = await _openBox('wishList');
//     await box.put(key, data);
//     log('$key Saved');
//   }

//   Future<List<WishListModel>?> getWishList() async {
//     final box = await _openBox('wishList');
//     return box.values.toList();
//   }

//   Future<bool> getWishStatus({required String key}) async {
//     final box = await _openBox('wishList');
//     return box.get(key) != null;
//   }

//   Future<void> deleteWishList({required String key}) async {
//     final box = await _openBox('wishList');
//     await box.delete(key);
//     log('$key deleted');
//   }
// }
