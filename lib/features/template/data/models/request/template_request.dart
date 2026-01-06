class TemplateRequest {
  final String username;
  final String password;
  final String fcmToken;
  final String type;

  const TemplateRequest({
    required this.username,
    required this.password,
    required this.fcmToken,
    required this.type,
  });

  Map<String, dynamic> toJson() {
    return {
      'username': username,
      'password': password,
      'fcmToken': fcmToken,
      'type': type,
    };
  }
}
