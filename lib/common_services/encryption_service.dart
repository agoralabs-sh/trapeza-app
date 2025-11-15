import 'package:cryptography/cryptography.dart';

import 'package:trapeza_app/common_entities/encrypted_data_entity.dart';

class EncryptionService {
  // private variables
  final AesGcm _algorithm = AesGcm.with256bits();

  /*
  /  static methods
  */

  /// Creates the encryption key from a [passphrase] seed and [salt].
  static Future<SecretKey> encryptionKeyFromPassphrase(List<int> passphrase, List<int> salt) async {
    final pbkdf2 = Pbkdf2(
      bits: 256, // 256 bits = 32 bytes
      iterations: 10000,
      macAlgorithm: Hmac.sha256(),
    );

    return await pbkdf2.deriveKey(
      secretKey: SecretKey(passphrase),
      nonce: salt,
    );
  }

  /// Creates a random initialization vector used in the encryption of the data.
  ///
  /// The initialization vector is 12 bytes.
  static List<int> randomInitializationVector() {
    return SecretKeyData.random(length: 12).bytes;
  }

  /// Creates a random salt used in the derivation of the encryption key.
  ///
  /// The salt is 32 bytes.
  static List<int> randomSalt() {
    return SecretKeyData.random(length: 32).bytes;
  }

  /*
  /  public methods
  */

  /// Decrypts the encrypted data using an [encryptionKey].
  Future<List<int>> decrypt(EncryptedDataEntity encryptedData, SecretKey encryptionKey) async {
    return await _algorithm.decrypt(
      SecretBox(
        encryptedData.cipherText,
        nonce: encryptedData.initializationVector,
        mac: Mac(encryptedData.authenticationCode),
      ),
      secretKey: encryptionKey,
    );
  }

  /// Encrypts some plaintext bytes using an [encryptionKey] and an [initializationVector].
  Future<EncryptedDataEntity> encrypt(List<int> plainText, SecretKey encryptionKey, List<int> initializationVector) async {
    final SecretBox secretBox = await _algorithm.encrypt(
      plainText,
      nonce: initializationVector,
      secretKey: encryptionKey,
    );

    return EncryptedDataEntity(
      authenticationCode: secretBox.mac.bytes,
      cipherText: secretBox.cipherText,
      initializationVector: initializationVector
    );
  }
}
