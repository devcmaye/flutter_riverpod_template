class BaseResponse<T> {
  final bool success;
  final T? data;
  final String message;
  final String? timestamp;

  const BaseResponse({
    required this.success,
    required this.data,
    required this.message,
    this.timestamp,
  });

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic json) fromJsonT,
  ) {
    return BaseResponse<T>(
      success: json['success'] ?? false,
      message: json['message'] ?? '',
      timestamp: json['timestamp'],
      data: json['data'] != null ? fromJsonT(json['data']) : null,
    );
  }

  BaseEntity<E> toEntity<E>(E Function(T data) mapper) {
    return BaseEntity<E>(
      success: success,
      message: message,
      data: data != null ? mapper(data as T) : null,
    );
  }
}

class BaseEntity<T> {
  final bool success;
  final T? data;
  final String message;

  const BaseEntity({
    required this.success,
    required this.data,
    required this.message,
  });
}
