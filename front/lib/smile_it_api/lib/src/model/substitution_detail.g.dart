// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'substitution_detail.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SubstitutionDetail extends SubstitutionDetail {
  @override
  final AtomPosition? mainAtom;
  @override
  final MoleculeDetails? substituentMolecule;
  @override
  final AtomPosition? substituentAtom;

  factory _$SubstitutionDetail(
          [void Function(SubstitutionDetailBuilder)? updates]) =>
      (new SubstitutionDetailBuilder()..update(updates))._build();

  _$SubstitutionDetail._(
      {this.mainAtom, this.substituentMolecule, this.substituentAtom})
      : super._();

  @override
  SubstitutionDetail rebuild(
          void Function(SubstitutionDetailBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SubstitutionDetailBuilder toBuilder() =>
      new SubstitutionDetailBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubstitutionDetail &&
        mainAtom == other.mainAtom &&
        substituentMolecule == other.substituentMolecule &&
        substituentAtom == other.substituentAtom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, mainAtom.hashCode);
    _$hash = $jc(_$hash, substituentMolecule.hashCode);
    _$hash = $jc(_$hash, substituentAtom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SubstitutionDetail')
          ..add('mainAtom', mainAtom)
          ..add('substituentMolecule', substituentMolecule)
          ..add('substituentAtom', substituentAtom))
        .toString();
  }
}

class SubstitutionDetailBuilder
    implements Builder<SubstitutionDetail, SubstitutionDetailBuilder> {
  _$SubstitutionDetail? _$v;

  AtomPositionBuilder? _mainAtom;
  AtomPositionBuilder get mainAtom =>
      _$this._mainAtom ??= new AtomPositionBuilder();
  set mainAtom(AtomPositionBuilder? mainAtom) => _$this._mainAtom = mainAtom;

  MoleculeDetailsBuilder? _substituentMolecule;
  MoleculeDetailsBuilder get substituentMolecule =>
      _$this._substituentMolecule ??= new MoleculeDetailsBuilder();
  set substituentMolecule(MoleculeDetailsBuilder? substituentMolecule) =>
      _$this._substituentMolecule = substituentMolecule;

  AtomPositionBuilder? _substituentAtom;
  AtomPositionBuilder get substituentAtom =>
      _$this._substituentAtom ??= new AtomPositionBuilder();
  set substituentAtom(AtomPositionBuilder? substituentAtom) =>
      _$this._substituentAtom = substituentAtom;

  SubstitutionDetailBuilder() {
    SubstitutionDetail._defaults(this);
  }

  SubstitutionDetailBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mainAtom = $v.mainAtom?.toBuilder();
      _substituentMolecule = $v.substituentMolecule?.toBuilder();
      _substituentAtom = $v.substituentAtom?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubstitutionDetail other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubstitutionDetail;
  }

  @override
  void update(void Function(SubstitutionDetailBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SubstitutionDetail build() => _build();

  _$SubstitutionDetail _build() {
    _$SubstitutionDetail _$result;
    try {
      _$result = _$v ??
          new _$SubstitutionDetail._(
              mainAtom: _mainAtom?.build(),
              substituentMolecule: _substituentMolecule?.build(),
              substituentAtom: _substituentAtom?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'mainAtom';
        _mainAtom?.build();
        _$failedField = 'substituentMolecule';
        _substituentMolecule?.build();
        _$failedField = 'substituentAtom';
        _substituentAtom?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'SubstitutionDetail', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
