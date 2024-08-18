// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_molecule_details200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetMoleculeDetails200Response extends GetMoleculeDetails200Response {
  @override
  final MoleculeDetails? molecule;
  @override
  final String? svgImage;

  factory _$GetMoleculeDetails200Response(
          [void Function(GetMoleculeDetails200ResponseBuilder)? updates]) =>
      (new GetMoleculeDetails200ResponseBuilder()..update(updates))._build();

  _$GetMoleculeDetails200Response._({this.molecule, this.svgImage}) : super._();

  @override
  GetMoleculeDetails200Response rebuild(
          void Function(GetMoleculeDetails200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetMoleculeDetails200ResponseBuilder toBuilder() =>
      new GetMoleculeDetails200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetMoleculeDetails200Response &&
        molecule == other.molecule &&
        svgImage == other.svgImage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, molecule.hashCode);
    _$hash = $jc(_$hash, svgImage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetMoleculeDetails200Response')
          ..add('molecule', molecule)
          ..add('svgImage', svgImage))
        .toString();
  }
}

class GetMoleculeDetails200ResponseBuilder
    implements
        Builder<GetMoleculeDetails200Response,
            GetMoleculeDetails200ResponseBuilder> {
  _$GetMoleculeDetails200Response? _$v;

  MoleculeDetailsBuilder? _molecule;
  MoleculeDetailsBuilder get molecule =>
      _$this._molecule ??= new MoleculeDetailsBuilder();
  set molecule(MoleculeDetailsBuilder? molecule) => _$this._molecule = molecule;

  String? _svgImage;
  String? get svgImage => _$this._svgImage;
  set svgImage(String? svgImage) => _$this._svgImage = svgImage;

  GetMoleculeDetails200ResponseBuilder() {
    GetMoleculeDetails200Response._defaults(this);
  }

  GetMoleculeDetails200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _molecule = $v.molecule?.toBuilder();
      _svgImage = $v.svgImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetMoleculeDetails200Response other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetMoleculeDetails200Response;
  }

  @override
  void update(void Function(GetMoleculeDetails200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetMoleculeDetails200Response build() => _build();

  _$GetMoleculeDetails200Response _build() {
    _$GetMoleculeDetails200Response _$result;
    try {
      _$result = _$v ??
          new _$GetMoleculeDetails200Response._(
              molecule: _molecule?.build(), svgImage: svgImage);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'molecule';
        _molecule?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetMoleculeDetails200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
