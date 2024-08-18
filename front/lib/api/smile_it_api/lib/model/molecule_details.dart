//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MoleculeDetails {
  /// Returns a new [MoleculeDetails] instance.
  MoleculeDetails({
    this.name,
    this.smile,
    this.atoms = const [],
    this.hasImplicitHydrogens,
    this.substitutionSites = const [],
  });

  /// Nombre generado o común de la molécula.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// SMILES de la molécula.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? smile;

  List<AtomPosition> atoms;

  /// Indica si la molécula tiene hidrógenos implícitos.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasImplicitHydrogens;

  /// Índices de los átomos seleccionados como sitios de sustitución.
  List<int> substitutionSites;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MoleculeDetails &&
    other.name == name &&
    other.smile == smile &&
    _deepEquality.equals(other.atoms, atoms) &&
    other.hasImplicitHydrogens == hasImplicitHydrogens &&
    _deepEquality.equals(other.substitutionSites, substitutionSites);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (smile == null ? 0 : smile!.hashCode) +
    (atoms.hashCode) +
    (hasImplicitHydrogens == null ? 0 : hasImplicitHydrogens!.hashCode) +
    (substitutionSites.hashCode);

  @override
  String toString() => 'MoleculeDetails[name=$name, smile=$smile, atoms=$atoms, hasImplicitHydrogens=$hasImplicitHydrogens, substitutionSites=$substitutionSites]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.smile != null) {
      json[r'smile'] = this.smile;
    } else {
      json[r'smile'] = null;
    }
      json[r'atoms'] = this.atoms;
    if (this.hasImplicitHydrogens != null) {
      json[r'hasImplicitHydrogens'] = this.hasImplicitHydrogens;
    } else {
      json[r'hasImplicitHydrogens'] = null;
    }
      json[r'substitutionSites'] = this.substitutionSites;
    return json;
  }

  /// Returns a new [MoleculeDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MoleculeDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MoleculeDetails[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MoleculeDetails[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MoleculeDetails(
        name: mapValueOfType<String>(json, r'name'),
        smile: mapValueOfType<String>(json, r'smile'),
        atoms: AtomPosition.listFromJson(json[r'atoms']),
        hasImplicitHydrogens: mapValueOfType<bool>(json, r'hasImplicitHydrogens'),
        substitutionSites: json[r'substitutionSites'] is Iterable
            ? (json[r'substitutionSites'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<MoleculeDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MoleculeDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MoleculeDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MoleculeDetails> mapFromJson(dynamic json) {
    final map = <String, MoleculeDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MoleculeDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MoleculeDetails-objects as value to a dart map
  static Map<String, List<MoleculeDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MoleculeDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MoleculeDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

