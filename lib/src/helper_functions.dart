import 'dart:typed_data';

import 'package:encrypt/encrypt.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

Uri getUrlFromRef(Reference ref) {
  final link = "gs://${ref.bucket}/${ref.fullPath}";
  return Uri.parse(link);
}

String getBucketFromUrl(Uri url) => '${url.scheme}://${url.authority}';

Reference getRefFromUrl(String url, FirebaseApp? app) {
  return FirebaseStorage.instanceFor(app: app).refFromURL(url);
}

String getUniqueId(String url) {
  return const Uuid().v5(Uuid.NAMESPACE_URL, url);
}

Uint8List decryptBytes(
    Uint8List encryptedDataWithIV,
    String encryptedSecret,
  ) {
    final encryptor = _getEncryptor(encryptedSecret);
    final decryptedBytes = encryptor.decryptBytes(
      Encrypted(encryptedDataWithIV.sublist(16)),
      iv: IV(encryptedDataWithIV.sublist(0, 16)),
    );
    return Uint8List.fromList(decryptedBytes);
  }

  Encrypter _getEncryptor(String base64HexKey) {
    final key = Key.fromBase64(base64HexKey);
    return Encrypter(AES(key, mode: AESMode.cbc));
  }
