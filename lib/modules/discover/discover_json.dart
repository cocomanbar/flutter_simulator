import 'package:json_annotation/json_annotation.dart';

// 和文件同名
part 'discover_json.g.dart';

@JsonSerializable()
class DiscoverList {
  @JsonValue(0)
  int code;
  @JsonValue("")
  String msg;
  DiscoverListData? data;

  DiscoverList(this.code, this.msg, this.data);

  factory DiscoverList.fromJson(Map<String, dynamic> json) {
    return _$DiscoverListFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$DiscoverListToJson(this);
  }
}

@JsonSerializable()
class DiscoverListData {
  List<DiscoverItem>? list;

  DiscoverListData(this.list);

  factory DiscoverListData.fromJson(Map<String, dynamic> json) =>
      _$DiscoverListDataFromJson(json);

  Map<String, dynamic> toJson() => _$DiscoverListDataToJson(this);
}

@JsonSerializable()
class DiscoverItem {
  String? title;
  String? desc;

  @JsonKey(name: "route_path")
  String? routePath;

  DiscoverItem(this.title, this.desc, this.routePath);

  factory DiscoverItem.fromJson(Map<String, dynamic> json) =>
      _$DiscoverItemFromJson(json);
  Map<String, dynamic> toJson() => _$DiscoverItemToJson(this);
}
