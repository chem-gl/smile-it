//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SynthesizedMolecule {
  /// Returns a new [SynthesizedMolecule] instance.
  SynthesizedMolecule({
    this.mainMolecule,
    this.substitutionDetails = const [],
    this.resultingMolecule,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MoleculeDetails? mainMolecule;

  List<SubstitutionDetail> substitutionDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MoleculeDetails? resultingMolecule;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SynthesizedMolecule &&
    other.mainMolecule == mainMolecule &&
    _deepEquality.equals(other.substitutionDetails, substitutionDetails) &&
    other.resultingMolecule == resultingMolecule;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mainMolecule == null ? 0 : mainMolecule!.hashCode) +
    (substitutionDetails.hashCode) +
    (resultingMolecule == null ? 0 : resultingMolecule!.hashCode);

  @override
  String toString() => 'SynthesizedMolecule[mainMolecule=$mainMolecule, substitutionDetails=$substitutionDetails, resultingMolecule=$resultingMolecule]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mainMolecule != null) {
      json[r'mainMolecule'] = this.mainMolecule;
    } else {
      json[r'mainMolecule'] = null;
    }
      json[r'substitutionDetails'] = this.substitutionDetails;
    if (this.resultingMolecule != null) {
      json[r'resultingMolecule'] = this.resultingMolecule;
    } else {
      json[r'resultingMolecule'] = null;
    }
    return json;
  }

  /// Returns a new [SynthesizedMolecule] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SynthesizedMolecule? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SynthesizedMolecule[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SynthesizedMolecule[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SynthesizedMolecule(
        mainMolecule: MoleculeDetails.fromJson(json[r'mainMolecule']),
        substitutionDetails: SubstitutionDetail.listFromJson(json[r'substitutionDetails']),
        resultingMolecule: MoleculeDetails.fromJson(json[r'resultingMolecule']),
      );
    }
    return null;
  }

  static List<SynthesizedMolecule> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SynthesizedMolecule>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SynthesizedMolecule.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SynthesizedMolecule> mapFromJson(dynamic json) {
    final map = <String, SynthesizedMolecule>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SynthesizedMolecule.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SynthesizedMolecule-objects as value to a dart map
  static Map<String, List<SynthesizedMolecule>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SynthesizedMolecule>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SynthesizedMolecule.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

