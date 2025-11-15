class EncryptedDataEntity {
  final List<int> authenticationCode;
  final List<int> cipherText;
  final List<int> initializationVector;

  EncryptedDataEntity({
    required this.authenticationCode,
    required this.cipherText,
    required this.initializationVector,
  });
}
