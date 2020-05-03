import 'package:json_annotation/json_annotation.dart';

import 'girl.dart';
part 'girls_container.g.dart';

@JsonSerializable(nullable: false)
class GirlsContainer {
  final List<Girl> girls;

  GirlsContainer(this.girls);

  factory GirlsContainer.fromJson(Map<String, dynamic> json) => _$GirlsContainerFromJson(json);

  Map<String, dynamic> toJson() => _$GirlsContainerToJson(this);
}