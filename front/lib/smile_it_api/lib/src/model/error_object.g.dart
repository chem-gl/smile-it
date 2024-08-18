// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_object.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorObject extends ErrorObject {
  @override
  final String? description;
  @override
  final int? code;
  @override
  final String? details;

  factory _$ErrorObject([void Function(ErrorObjectBuilder)? updates]) =>
      (new ErrorObjectBuilder()..update(updates))._build();

  _$ErrorObject._({this.description, this.code, this.details}) : super._();

  @override
  ErrorObject rebuild(void Function(ErrorObjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorObjectBuilder toBuilder() => new ErrorObjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorObject &&
        description == other.description &&
        code == other.code &&
        details == other.details;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, details.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ErrorObject')
          ..add('description', description)
          ..add('code', code)
          ..add('details', details))
        .toString();
  }
}

class ErrorObjectBuilder implements Builder<ErrorObject, ErrorObjectBuilder> {
  _$ErrorObject? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _details;
  String? get details => _$this._details;
  set details(String? details) => _$this._details = details;

  ErrorObjectBuilder() {
    ErrorObject._defaults(this);
  }

  ErrorObjectBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _code = $v.code;
      _details = $v.details;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorObject other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorObject;
  }

  @override
  void update(void Function(ErrorObjectBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ErrorObject build() => _build();

  _$ErrorObject _build() {
    final _$result = _$v ??
        new _$ErrorObject._(
            description: description, code: code, details: details);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
