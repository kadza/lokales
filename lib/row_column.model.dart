import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'row_column.model.g.dart';

@immutable
@JsonSerializable()
class RowColumn {
  final int row;
  final int column;     
  
  const RowColumn({
    @required this.row, 
    @required this.column
  });
 
  factory RowColumn.fromJson(Map<String, dynamic> json) => _$RowColumnFromJson(json);

  Map<String, dynamic> toJson() => _$RowColumnToJson(this);
 
}