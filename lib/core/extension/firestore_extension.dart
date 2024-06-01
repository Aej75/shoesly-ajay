import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:code_test/core/model/base_response.dart';

extension FirestoreExtension on QuerySnapshot<Map<String, dynamic>> {
  ApiResponseList<T> toApiResponseList<T>(
      {required T Function(QueryDocumentSnapshot<Map<String, dynamic>>)
          fromDoc}) {
    try {
      final docs = this.docs;
      final data = docs.map((doc) => fromDoc(doc)).toList();
      return ApiReponse(success: true, message: "", data: data);
    } catch (e) {
      return ApiReponse(success: false, message: "$e", data: null);
    }
  }
}
