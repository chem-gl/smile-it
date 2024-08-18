// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_molecule_image200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMoleculeImage200Response extends GetMoleculeImage200Response {
  @override
  final String? svgImage;

  factory _$GetMoleculeImage200Response(
          [void Function(GetMoleculeImage200ResponseBuilder)? updates]) =>
      (new GetMoleculeImage200ResponseBuilder()..update(updates))._build();

  _$GetMoleculeImage200Response._({this.svgImage}) : super._();

  @override
  GetMoleculeImage200Response rebuild(
          void Function(GetMoleculeImage200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMoleculeImage200ResponseBuilder toBuilder() =>
      new GetMoleculeImage200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMoleculeImage200Response && svgImage == other.svgImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, svgImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetMoleculeImage200Response')
          ..add('svgImage', svgImage))
        .toString();
  }
}

class GetMoleculeImage200ResponseBuilder
    implements
        Builder<GetMoleculeImage200Response,
            GetMoleculeImage200ResponseBuilder> {
  _$GetMoleculeImage200Response? _$v;

  String? _svgImage;
  String? get svgImage => _$this._svgImage;
  set svgImage(String? svgImage) => _$this._svgImage = svgImage;

  GetMoleculeImage200ResponseBuilder() {
    GetMoleculeImage200Response._defaults(this);
  }

  GetMoleculeImage200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _svgImage = $v.svgImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMoleculeImage200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetMoleculeImage200Response;
  }

  @override
  void update(void Function(GetMoleculeImage200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMoleculeImage200Response build() => _build();

  _$GetMoleculeImage200Response _build() {
    final _$result =
        _$v ?? new _$GetMoleculeImage200Response._(svgImage: svgImage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
