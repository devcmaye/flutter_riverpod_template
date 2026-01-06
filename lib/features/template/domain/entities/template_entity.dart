class TemplateEntity {
  final String accessToken;
  final String refreshToken;
  final String tokenType;
  final int expiresIn;
  final String scope;
  final int roleLevel;

  const TemplateEntity({
    required this.accessToken,
    required this.refreshToken,
    required this.tokenType,
    required this.expiresIn,
    required this.scope,
    required this.roleLevel,
  });

  bool get isExpired => expiresIn <= 0;
}
