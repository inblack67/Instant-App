// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:instant/graphql/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

abstract class GLoginUserInputType
    implements Built<GLoginUserInputType, GLoginUserInputTypeBuilder> {
  GLoginUserInputType._();

  factory GLoginUserInputType(
      [Function(GLoginUserInputTypeBuilder b) updates]) = _$GLoginUserInputType;

  String get password;
  String get username;
  static Serializer<GLoginUserInputType> get serializer =>
      _$gLoginUserInputTypeSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GLoginUserInputType.serializer, this)
          as Map<String, dynamic>);
  static GLoginUserInputType? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GLoginUserInputType.serializer, json);
}
