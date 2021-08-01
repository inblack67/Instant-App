// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GLoginUserInputType> _$gLoginUserInputTypeSerializer =
    new _$GLoginUserInputTypeSerializer();

class _$GLoginUserInputTypeSerializer
    implements StructuredSerializer<GLoginUserInputType> {
  @override
  final Iterable<Type> types = const [
    GLoginUserInputType,
    _$GLoginUserInputType
  ];
  @override
  final String wireName = 'GLoginUserInputType';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GLoginUserInputType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'password',
      serializers.serialize(object.password,
          specifiedType: const FullType(String)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GLoginUserInputType deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GLoginUserInputTypeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GLoginUserInputType extends GLoginUserInputType {
  @override
  final String password;
  @override
  final String username;

  factory _$GLoginUserInputType(
          [void Function(GLoginUserInputTypeBuilder)? updates]) =>
      (new GLoginUserInputTypeBuilder()..update(updates)).build();

  _$GLoginUserInputType._({required this.password, required this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        password, 'GLoginUserInputType', 'password');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GLoginUserInputType', 'username');
  }

  @override
  GLoginUserInputType rebuild(
          void Function(GLoginUserInputTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GLoginUserInputTypeBuilder toBuilder() =>
      new GLoginUserInputTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GLoginUserInputType &&
        password == other.password &&
        username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, password.hashCode), username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GLoginUserInputType')
          ..add('password', password)
          ..add('username', username))
        .toString();
  }
}

class GLoginUserInputTypeBuilder
    implements Builder<GLoginUserInputType, GLoginUserInputTypeBuilder> {
  _$GLoginUserInputType? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GLoginUserInputTypeBuilder();

  GLoginUserInputTypeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GLoginUserInputType other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GLoginUserInputType;
  }

  @override
  void update(void Function(GLoginUserInputTypeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GLoginUserInputType build() {
    final _$result = _$v ??
        new _$GLoginUserInputType._(
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'GLoginUserInputType', 'password'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GLoginUserInputType', 'username'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
