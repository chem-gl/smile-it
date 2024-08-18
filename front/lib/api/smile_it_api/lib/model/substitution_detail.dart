//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SubstitutionDetail {
  /// Returns a new [SubstitutionDetail] instance.
  SubstitutionDetail({
    this.mainAtom,
    this.substituentMolecule,
    this.substituentAtom,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AtomPosition? mainAtom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MoleculeDetails? substituentMolecule;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AtomPosition? substituentAtom;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubstitutionDetail &&
    other.mainAtom == mainAtom &&
    other.substituentMolecule == substituentMolecule &&
    other.substituentAtom == substituentAtom;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mainAtom == null ? 0 : mainAtom!.hashCode) +
    (substituentMolecule == null ? 0 : substituentMolecule!.hashCode) +
    (substituentAtom == null ? 0 : substituentAtom!.hashCode);

  @override
  String toString() => 'SubstitutionDetail[mainAtom=$mainAtom, substituentMolecule=$substituentMolecule, substituentAtom=$substituentAtom]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mainAtom != null) {
      json[r'mainAtom'] = this.mainAtom;
    } else {
      json[r'mainAtom'] = null;
    }
    if (this.substituentMolecule != null) {
      json[r'substituentMolecule'] = this.substituentMolecule;
    } else {
      json[r'substituentMolecule'] = null;
    }
    if (this.substituentAtom != null) {
      json[r'substituentAtom'] = this.substituentAtom;
    } else {
      json[r'substituentAtom'] = null;
    }
    return json;
  }

  /// Returns a new [SubstitutionDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubstitutionDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubstitutionDetail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubstitutionDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubstitutionDetail(
        mainAtom: AtomPosition.fromJson(json[r'mainAtom']),
        substituentMolecule: MoleculeDetails.fromJson(json[r'substituentMolecule']),
        substituentAtom: AtomPosition.fromJson(json[r'substituentAtom']),
      );
    }
    return null;
  }

  static List<SubstitutionDetail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubstitutionDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubstitutionDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubstitutionDetail> mapFromJson(dynamic json) {
    final map = <String, SubstitutionDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubstitutionDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubstitutionDetail-objects as value to a dart map
  static Map<String, List<SubstitutionDetail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubstitutionDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubstitutionDetail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

