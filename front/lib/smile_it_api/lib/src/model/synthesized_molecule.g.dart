// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'synthesized_molecule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SynthesizedMolecule extends SynthesizedMolecule {
  @override
  final MoleculeDetails? mainMolecule;
  @override
  final BuiltList<SubstitutionDetail>? substitutionDetails;
  @override
  final MoleculeDetails? resultingMolecule;

  factory _$SynthesizedMolecule(
          [void Function(SynthesizedMoleculeBuilder)? updates]) =>
      (new SynthesizedMoleculeBuilder()..update(updates))._build();

  _$SynthesizedMolecule._(
      {this.mainMolecule, this.substitutionDetails, this.resultingMolecule})
      : super._();

  @override
  SynthesizedMolecule rebuild(
          void Function(SynthesizedMoleculeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SynthesizedMoleculeBuilder toBuilder() =>
      new SynthesizedMoleculeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SynthesizedMolecule &&
        mainMolecule == other.mainMolecule &&
        substitutionDetails == other.substitutionDetails &&
        resultingMolecule == other.resultingMolecule;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mainMolecule.hashCode);
    _$hash = $jc(_$hash, substitutionDetails.hashCode);
    _$hash = $jc(_$hash, resultingMolecule.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SynthesizedMolecule')
          ..add('mainMolecule', mainMolecule)
          ..add('substitutionDetails', substitutionDetails)
          ..add('resultingMolecule', resultingMolecule))
        .toString();
  }
}

class SynthesizedMoleculeBuilder
    implements Builder<SynthesizedMolecule, SynthesizedMoleculeBuilder> {
  _$SynthesizedMolecule? _$v;

  MoleculeDetailsBuilder? _mainMolecule;
  MoleculeDetailsBuilder get mainMolecule =>
      _$this._mainMolecule ??= new MoleculeDetailsBuilder();
  set mainMolecule(MoleculeDetailsBuilder? mainMolecule) =>
      _$this._mainMolecule = mainMolecule;

  ListBuilder<SubstitutionDetail>? _substitutionDetails;
  ListBuilder<SubstitutionDetail> get substitutionDetails =>
      _$this._substitutionDetails ??= new ListBuilder<SubstitutionDetail>();
  set substitutionDetails(
          ListBuilder<SubstitutionDetail>? substitutionDetails) =>
      _$this._substitutionDetails = substitutionDetails;

  MoleculeDetailsBuilder? _resultingMolecule;
  MoleculeDetailsBuilder get resultingMolecule =>
      _$this._resultingMolecule ??= new MoleculeDetailsBuilder();
  set resultingMolecule(MoleculeDetailsBuilder? resultingMolecule) =>
      _$this._resultingMolecule = resultingMolecule;

  SynthesizedMoleculeBuilder() {
    SynthesizedMolecule._defaults(this);
  }

  SynthesizedMoleculeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mainMolecule = $v.mainMolecule?.toBuilder();
      _substitutionDetails = $v.substitutionDetails?.toBuilder();
      _resultingMolecule = $v.resultingMolecule?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SynthesizedMolecule other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SynthesizedMolecule;
  }

  @override
  void update(void Function(SynthesizedMoleculeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SynthesizedMolecule build() => _build();

  _$SynthesizedMolecule _build() {
    _$SynthesizedMolecule _$result;
    try {
      _$result = _$v ??
          new _$SynthesizedMolecule._(
              mainMolecule: _mainMolecule?.build(),
              substitutionDetails: _substitutionDetails?.build(),
              resultingMolecule: _resultingMolecule?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mainMolecule';
        _mainMolecule?.build();
        _$failedField = 'substitutionDetails';
        _substitutionDetails?.build();
        _$failedField = 'resultingMolecule';
        _resultingMolecule?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SynthesizedMolecule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
