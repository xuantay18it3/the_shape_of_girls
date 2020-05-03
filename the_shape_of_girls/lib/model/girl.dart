import 'dart:core';

import 'package:json_annotation/json_annotation.dart';
part 'girl.g.dart';
@JsonSerializable(nullable: false)
class Girl {
  final String id;
  final String links;

  Girl({this.id, this.links});

  factory Girl.fromJson(Map<String, dynamic> json) => _$GirlFromJson(json);

  Map<String, dynamic> toJson() => _$GirlToJson(this);
}