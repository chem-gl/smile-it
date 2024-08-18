//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class SntesisApi {
  SntesisApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Sintetizar moléculas con sustituyentes
  ///
  /// Recibe una molécula principal y una lista de sustituyentes, devolviendo un arreglo con todas las moléculas y sus sustituyentes generados.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SynthesisRequest] synthesisRequest (required):
  Future<Response> synthesizeMoleculesWithSubstitutesWithHttpInfo(SynthesisRequest synthesisRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/synthesizeMoleculesWithSubstitutes';

    // ignore: prefer_final_locals
    Object? postBody = synthesisRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Sintetizar moléculas con sustituyentes
  ///
  /// Recibe una molécula principal y una lista de sustituyentes, devolviendo un arreglo con todas las moléculas y sus sustituyentes generados.
  ///
  /// Parameters:
  ///
  /// * [SynthesisRequest] synthesisRequest (required):
  Future<List<SynthesizedMolecule>?> synthesizeMoleculesWithSubstitutes(SynthesisRequest synthesisRequest,) async {
    final response = await synthesizeMoleculesWithSubstitutesWithHttpInfo(synthesisRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<SynthesizedMolecule>') as List)
        .cast<SynthesizedMolecule>()
        .toList(growable: false);

    }
    return null;
  }
}
