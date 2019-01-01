import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../media_model.dart';

part 'media_gallery.action.g.dart';

@immutable
@JsonSerializable()
class AddMediaAction {
  final Media media;

  AddMediaAction({@required this.media});

  factory AddMediaAction.fromJson(Map<String, dynamic> json) =>
      _$AddMediaActionFromJson(json);

  Map<String, dynamic> toJson() => _$AddMediaActionToJson(this);
}

@immutable
@JsonSerializable()
class ClearMediaAction {
  ClearMediaAction();

  factory ClearMediaAction.fromJson(Map<String, dynamic> json) =>
      _$ClearMediaActionFromJson(json);

  Map<String, dynamic> toJson() => _$ClearMediaActionToJson(this);
}
