import '../../../domain/entities/template_entity.dart';

class TemplateDto {
  final int roleLevel;
  final String accessToken;
  final String tokenType;
  final String refreshToken;
  final int expiresIn;
  final String scope;

  const TemplateDto({
    required this.roleLevel,
    required this.accessToken,
    required this.tokenType,
    required this.refreshToken,
    required this.expiresIn,
    required this.scope,
  });

  factory TemplateDto.fromJson(Map<String, dynamic> json) {
    return TemplateDto(
      roleLevel: json['role_level'],
      accessToken: json['access_token'],
      tokenType: json['token_type'],
      refreshToken: json['refresh_token'],
      expiresIn: json['expires_in'],
      scope: json['scope'],
    );
  }

  TemplateEntity toEntity() {
    return TemplateEntity(
      accessToken: accessToken,
      refreshToken: refreshToken,
      expiresIn: expiresIn,
      tokenType: tokenType,
      scope: scope,
      roleLevel: roleLevel,
    );
  }
}
