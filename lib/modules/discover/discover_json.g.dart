// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscoverList _$DiscoverListFromJson(Map<String, dynamic> json) => DiscoverList(
      json['code'] as int,
      json['msg'] as String,
      DiscoverListData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DiscoverListToJson(DiscoverList instance) =>
    <String, dynamic>{
      'code': instance.code,
      'msg': instance.msg,
      'data': instance.data,
    };

DiscoverListData _$DiscoverListDataFromJson(Map<String, dynamic> json) =>
    DiscoverListData(
      (json['list'] as List<dynamic>)
          .map((e) => DiscoverItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DiscoverListDataToJson(DiscoverListData instance) =>
    <String, dynamic>{
      'list': instance.list,
    };

DiscoverItem _$DiscoverItemFromJson(Map<String, dynamic> json) => DiscoverItem(
      json['title'] as String,
      json['desc'] as String,
      json['route_path'] as String,
    );

Map<String, dynamic> _$DiscoverItemToJson(DiscoverItem instance) =>
    <String, dynamic>{
      'title': instance.title,
      'desc': instance.desc,
      'route_path': instance.routePath,
    };
