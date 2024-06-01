import 'package:cloud_firestore/cloud_firestore.dart';

class FirebaseClient<T> {
  final CollectionReference collection;

  FirebaseClient(this.collection);

  Future<bool> createItem(
      T item, Map<String, dynamic> Function(T) toMap) async {
    try {
      await collection.add(toMap(item));
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<bool> isDocumentExists(String docId) async {
    try {
      DocumentSnapshot documentSnapshot = await collection.doc(docId).get();
      return documentSnapshot.exists;
    } catch (e) {
      print('Error checking document existence: $e');
      return false; // Return false in case of any error
    }
  }

  Future<bool> createBatch(
      {required List<T> items,
      required Map<String, dynamic> Function(T) toMap}) async {
    WriteBatch batch = FirebaseFirestore.instance.batch();

    try {
      for (T item in items) {
        final id = toMap(item)['id'];

        DocumentReference docRef = collection.doc(id);
        batch.set(docRef, toMap(item));
        // final id = toMap(item)['id'];
        // if (!await isDocumentExists(id)) {
        //   DocumentReference docRef = collection.doc(id);
        //   batch.set(docRef, toMap(item));
        // }
      }
      await batch.commit();
      return true;
    } catch (e) {
      print('Error creating batch: $e');
      return false;
    }
  }

  Future<T?> readItem(
      String id, T Function(Map<String, dynamic>, String) fromMap) async {
    DocumentSnapshot doc = await collection.doc(id).get();
    if (doc.exists) {
      return fromMap(doc.data() as Map<String, dynamic>, doc.id);
    }
    return null;
  }

  Future<List<T>> readCollection<T>(
      {required T Function(Map<String, dynamic>, String) toMap}) async {
    QuerySnapshot snapshot = await collection.get();
    List<T> resultList = [];

    for (var doc in snapshot.docs) {
      T item = toMap(doc.data() as Map<String, dynamic>, doc.id);
      resultList.add(item);
    }

    return resultList;
  }

  Stream<T?> readItemStream(
      String id, T Function(Map<String, dynamic>, String) fromMap) {
    return collection.doc(id).snapshots().map((doc) {
      if (doc.exists) {
        return fromMap(doc.data() as Map<String, dynamic>, doc.id);
      }
      return null;
    });
  }

  Future<void> updateItem(String id, Map<String, dynamic> data) async {
    await collection.doc(id).update(data);
  }

  Future<void> deleteItem(String id) async {
    await collection.doc(id).delete();
  }
}
