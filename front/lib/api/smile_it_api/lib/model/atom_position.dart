//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AtomPosition {
  /// Returns a new [AtomPosition] instance.
  AtomPosition({
    this.atomIndex,
    this.x,
    this.y,
  });

  /// Índice del átomo en la molécula.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? atomIndex;

  /// Coordenada X del átomo.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? x;

  /// Coordenada Y del átomo.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? y;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AtomPosition &&
    other.atomIndex == atomIndex &&
    other.x == x &&
    other.y == y;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (atomIndex == null ? 0 : atomIndex!.hashCode) +
    (x == null ? 0 : x!.hashCode) +
    (y == null ? 0 : y!.hashCode);

  @override
  String toString() => 'AtomPosition[atomIndex=$atomIndex, x=$x, y=$y]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.atomIndex != null) {
      json[r'atom_index'] = this.atomIndex;
    } else {
      json[r'atom_index'] = null;
    }
    if (this.x != null) {
      json[r'x'] = this.x;
    } else {
      json[r'x'] = null;
    }
    if (this.y != null) {
      json[r'y'] = this.y;
    } else {
      json[r'y'] = null;
    }
    return json;
  }

  /// Returns a new [AtomPosition] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AtomPosition? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AtomPosition[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AtomPosition[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AtomPosition(
        atomIndex: mapValueOfType<int>(json, r'atom_index'),
        x: num.parse('${json[r'x']}'),
        y: num.parse('${json[r'y']}'),
      );
    }
    return null;
  }

  static List<AtomPosition> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AtomPosition>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AtomPosition.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AtomPosition> mapFromJson(dynamic json) {
    final map = <String, AtomPosition>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AtomPosition.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AtomPosition-objects as value to a dart map
  static Map<String, List<AtomPosition>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AtomPosition>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AtomPosition.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

