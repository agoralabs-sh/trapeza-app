import 'dart:convert';
import 'package:cryptography/cryptography.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:trapeza_app/common_entities/encrypted_data_entity.dart';
import 'package:trapeza_app/common_services/encryption_service.dart';

void main() {
  test('should successfully encrypt/decrypt data', () async {
    final String plainText = '{"message":"super secret message!!"}';
    final SecretKey encryptionKey = await EncryptionService.encryptionKeyFromPassphrase(utf8.encode('ztv4pbv4CFT5tjx.fdj'), EncryptionService.randomSalt());
    final EncryptionService service = EncryptionService();
    final EncryptedDataEntity encryptedData = await service.encrypt(
      utf8.encode(plainText),
      encryptionKey,
      EncryptionService.randomInitializationVector(),
    );
    final List<int> result = await service.decrypt(encryptedData, encryptionKey);

    expect(utf8.decode(result), plainText);
  });
}
