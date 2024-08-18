//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetMoleculeDetails200Response {
  /// Returns a new [GetMoleculeDetails200Response] instance.
  GetMoleculeDetails200Response({
    this.molecule,
    this.svgImage,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MoleculeDetails? molecule;

  /// Imagen de la molécula en formato SVG.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? svgImage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetMoleculeDetails200Response &&
    other.molecule == molecule &&
    other.svgImage == svgImage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (molecule == null ? 0 : molecule!.hashCode) +
    (svgImage == null ? 0 : svgImage!.hashCode);

  @override
  String toString() => 'GetMoleculeDetails200Response[molecule=$molecule, svgImage=$svgImage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.molecule != null) {
      json[r'molecule'] = this.molecule;
    } else {
      json[r'molecule'] = null;
    }
    if (this.svgImage != null) {
      json[r'svg_image'] = this.svgImage;
    } else {
      json[r'svg_image'] = null;
    }
    return json;
  }

  /// Returns a new [GetMoleculeDetails200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetMoleculeDetails200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GetMoleculeDetails200Response[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GetMoleculeDetails200Response[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GetMoleculeDetails200Response(
        molecule: MoleculeDetails.fromJson(json[r'molecule']),
        svgImage: mapValueOfType<String>(json, r'svg_image'),
      );
    }
    return null;
  }

  static List<GetMoleculeDetails200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetMoleculeDetails200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetMoleculeDetails200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetMoleculeDetails200Response> mapFromJson(dynamic json) {
    final map = <String, GetMoleculeDetails200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetMoleculeDetails200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetMoleculeDetails200Response-objects as value to a dart map
  static Map<String, List<GetMoleculeDetails200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetMoleculeDetails200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetMoleculeDetails200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

