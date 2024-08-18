// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synthesis_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SynthesisRequest extends SynthesisRequest {
  @override
  final MoleculeDetails? mainMolecule;
  @override
  final BuiltList<MoleculeDetails>? substituents;

  factory _$SynthesisRequest(
          [void Function(SynthesisRequestBuilder)? updates]) =>
      (new SynthesisRequestBuilder()..update(updates))._build();

  _$SynthesisRequest._({this.mainMolecule, this.substituents}) : super._();

  @override
  SynthesisRequest rebuild(void Function(SynthesisRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SynthesisRequestBuilder toBuilder() =>
      new SynthesisRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SynthesisRequest &&
        mainMolecule == other.mainMolecule &&
        substituents == other.substituents;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mainMolecule.hashCode);
    _$hash = $jc(_$hash, substituents.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SynthesisRequest')
          ..add('mainMolecule', mainMolecule)
          ..add('substituents', substituents))
        .toString();
  }
}

class SynthesisRequestBuilder
    implements Builder<SynthesisRequest, SynthesisRequestBuilder> {
  _$SynthesisRequest? _$v;

  MoleculeDetailsBuilder? _mainMolecule;
  MoleculeDetailsBuilder get mainMolecule =>
      _$this._mainMolecule ??= new MoleculeDetailsBuilder();
  set mainMolecule(MoleculeDetailsBuilder? mainMolecule) =>
      _$this._mainMolecule = mainMolecule;

  ListBuilder<MoleculeDetails>? _substituents;
  ListBuilder<MoleculeDetails> get substituents =>
      _$this._substituents ??= new ListBuilder<MoleculeDetails>();
  set substituents(ListBuilder<MoleculeDetails>? substituents) =>
      _$this._substituents = substituents;

  SynthesisRequestBuilder() {
    SynthesisRequest._defaults(this);
  }

  SynthesisRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mainMolecule = $v.mainMolecule?.toBuilder();
      _substituents = $v.substituents?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SynthesisRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SynthesisRequest;
  }

  @override
  void update(void Function(SynthesisRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SynthesisRequest build() => _build();

  _$SynthesisRequest _build() {
    _$SynthesisRequest _$result;
    try {
      _$result = _$v ??
          new _$SynthesisRequest._(
              mainMolecule: _mainMolecule?.build(),
              substituents: _substituents?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mainMolecule';
        _mainMolecule?.build();
        _$failedField = 'substituents';
        _substituents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SynthesisRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
