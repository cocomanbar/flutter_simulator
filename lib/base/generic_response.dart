import 'package:json_annotation/json_annotation.dart';

part 'generic_response.g.dart';

// Flutter 使用 json_serializable 解析 JSON 支持泛型
@JsonSerializable(genericArgumentFactories: true)
class GenericResponse<T> {
  int code = 0;
  String msg = "";
  T? data;

  GenericResponse(this.code, this.msg, this.data);

  // 反序列
  factory GenericResponse.fromJson(
    Map<String, dynamic> json,
    T Function(dynamic json) fromJsonT,
  ) =>
      _$GenericResponseFromJson<T>(json, fromJsonT);

  // 序列化
  Map<String, dynamic> toJson(Object? Function(T value) toJsonT) =>
      _$GenericResponseToJson<T>(this, toJsonT);
}
