// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atom_position.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AtomPosition extends AtomPosition {
  @override
  final int? atomIndex;
  @override
  final num? x;
  @override
  final num? y;

  factory _$AtomPosition([void Function(AtomPositionBuilder)? updates]) =>
      (new AtomPositionBuilder()..update(updates))._build();

  _$AtomPosition._({this.atomIndex, this.x, this.y}) : super._();

  @override
  AtomPosition rebuild(void Function(AtomPositionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AtomPositionBuilder toBuilder() => new AtomPositionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AtomPosition &&
        atomIndex == other.atomIndex &&
        x == other.x &&
        y == other.y;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, atomIndex.hashCode);
    _$hash = $jc(_$hash, x.hashCode);
    _$hash = $jc(_$hash, y.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AtomPosition')
          ..add('atomIndex', atomIndex)
          ..add('x', x)
          ..add('y', y))
        .toString();
  }
}

class AtomPositionBuilder
    implements Builder<AtomPosition, AtomPositionBuilder> {
  _$AtomPosition? _$v;

  int? _atomIndex;
  int? get atomIndex => _$this._atomIndex;
  set atomIndex(int? atomIndex) => _$this._atomIndex = atomIndex;

  num? _x;
  num? get x => _$this._x;
  set x(num? x) => _$this._x = x;

  num? _y;
  num? get y => _$this._y;
  set y(num? y) => _$this._y = y;

  AtomPositionBuilder() {
    AtomPosition._defaults(this);
  }

  AtomPositionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _atomIndex = $v.atomIndex;
      _x = $v.x;
      _y = $v.y;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AtomPosition other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AtomPosition;
  }

  @override
  void update(void Function(AtomPositionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AtomPosition build() => _build();

  _$AtomPosition _build() {
    final _$result =
        _$v ?? new _$AtomPosition._(atomIndex: atomIndex, x: x, y: y);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
