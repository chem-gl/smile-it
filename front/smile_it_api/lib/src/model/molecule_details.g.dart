// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'molecule_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MoleculeDetails extends MoleculeDetails {
  @override
  final String? name;
  @override
  final String? smile;
  @override
  final BuiltList<AtomPosition>? atoms;
  @override
  final bool? hasImplicitHydrogens;
  @override
  final BuiltList<int>? substitutionSites;

  factory _$MoleculeDetails([void Function(MoleculeDetailsBuilder)? updates]) =>
      (new MoleculeDetailsBuilder()..update(updates))._build();

  _$MoleculeDetails._(
      {this.name,
      this.smile,
      this.atoms,
      this.hasImplicitHydrogens,
      this.substitutionSites})
      : super._();

  @override
  MoleculeDetails rebuild(void Function(MoleculeDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoleculeDetailsBuilder toBuilder() =>
      new MoleculeDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoleculeDetails &&
        name == other.name &&
        smile == other.smile &&
        atoms == other.atoms &&
        hasImplicitHydrogens == other.hasImplicitHydrogens &&
        substitutionSites == other.substitutionSites;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, smile.hashCode);
    _$hash = $jc(_$hash, atoms.hashCode);
    _$hash = $jc(_$hash, hasImplicitHydrogens.hashCode);
    _$hash = $jc(_$hash, substitutionSites.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MoleculeDetails')
          ..add('name', name)
          ..add('smile', smile)
          ..add('atoms', atoms)
          ..add('hasImplicitHydrogens', hasImplicitHydrogens)
          ..add('substitutionSites', substitutionSites))
        .toString();
  }
}

class MoleculeDetailsBuilder
    implements Builder<MoleculeDetails, MoleculeDetailsBuilder> {
  _$MoleculeDetails? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _smile;
  String? get smile => _$this._smile;
  set smile(String? smile) => _$this._smile = smile;

  ListBuilder<AtomPosition>? _atoms;
  ListBuilder<AtomPosition> get atoms =>
      _$this._atoms ??= new ListBuilder<AtomPosition>();
  set atoms(ListBuilder<AtomPosition>? atoms) => _$this._atoms = atoms;

  bool? _hasImplicitHydrogens;
  bool? get hasImplicitHydrogens => _$this._hasImplicitHydrogens;
  set hasImplicitHydrogens(bool? hasImplicitHydrogens) =>
      _$this._hasImplicitHydrogens = hasImplicitHydrogens;

  ListBuilder<int>? _substitutionSites;
  ListBuilder<int> get substitutionSites =>
      _$this._substitutionSites ??= new ListBuilder<int>();
  set substitutionSites(ListBuilder<int>? substitutionSites) =>
      _$this._substitutionSites = substitutionSites;

  MoleculeDetailsBuilder() {
    MoleculeDetails._defaults(this);
  }

  MoleculeDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _smile = $v.smile;
      _atoms = $v.atoms?.toBuilder();
      _hasImplicitHydrogens = $v.hasImplicitHydrogens;
      _substitutionSites = $v.substitutionSites?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoleculeDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MoleculeDetails;
  }

  @override
  void update(void Function(MoleculeDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MoleculeDetails build() => _build();

  _$MoleculeDetails _build() {
    _$MoleculeDetails _$result;
    try {
      _$result = _$v ??
          new _$MoleculeDetails._(
              name: name,
              smile: smile,
              atoms: _atoms?.build(),
              hasImplicitHydrogens: hasImplicitHydrogens,
              substitutionSites: _substitutionSites?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'atoms';
        _atoms?.build();

        _$failedField = 'substitutionSites';
        _substitutionSites?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'MoleculeDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
