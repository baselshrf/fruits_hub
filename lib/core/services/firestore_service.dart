import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/core/services/data_service.dart';
import 'package:e_commerce/features/auth/data/models/user_model.dart';
import 'package:e_commerce/features/auth/domain/entities/user_entity.dart';

class FireStoreService implements DatabaseService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Future<void> addData({
    required String path,
    required Map<String, dynamic> data,
  }) async {
    await firestore.collection(path).add(data);
  }

  @override
  Future<UserEntity> getUserData({
    required String path,
    required String uid,
  }) async {
    var data = await firestore.collection(path).doc(uid).get();
    return UserModel.fromJson(data.data() as Map<String, dynamic>);
  }
}
