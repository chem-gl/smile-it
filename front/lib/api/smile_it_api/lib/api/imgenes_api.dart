//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ImgenesApi {
  ImgenesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Obtener detalles e imagen de una molécula
  ///
  /// Retorna la estructura de una molécula y su imagen SVG basada en un SMILES proporcionado.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] smile (required):
  ///   SMILES que describe la molécula de la cual se desea obtener la imagen y detalles.
  Future<Response> getMoleculeDetailsWithHttpInfo(String smile,) async {
    // ignore: prefer_const_declarations
    final path = r'/getMoleculeDetails';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'smile', smile));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Obtener detalles e imagen de una molécula
  ///
  /// Retorna la estructura de una molécula y su imagen SVG basada en un SMILES proporcionado.
  ///
  /// Parameters:
  ///
  /// * [String] smile (required):
  ///   SMILES que describe la molécula de la cual se desea obtener la imagen y detalles.
  Future<GetMoleculeDetails200Response?> getMoleculeDetails(String smile,) async {
    final response = await getMoleculeDetailsWithHttpInfo(smile,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetMoleculeDetails200Response',) as GetMoleculeDetails200Response;
    
    }
    return null;
  }

  /// Obtener imagen SVG de una molécula
  ///
  /// Genera y devuelve una imagen SVG coherente con la estructura de una molécula proporcionada.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MoleculeDetails] moleculeDetails (required):
  Future<Response> getMoleculeImageWithHttpInfo(MoleculeDetails moleculeDetails,) async {
    // ignore: prefer_const_declarations
    final path = r'/getMoleculeImage';

    // ignore: prefer_final_locals
    Object? postBody = moleculeDetails;

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

  /// Obtener imagen SVG de una molécula
  ///
  /// Genera y devuelve una imagen SVG coherente con la estructura de una molécula proporcionada.
  ///
  /// Parameters:
  ///
  /// * [MoleculeDetails] moleculeDetails (required):
  Future<GetMoleculeImage200Response?> getMoleculeImage(MoleculeDetails moleculeDetails,) async {
    final response = await getMoleculeImageWithHttpInfo(moleculeDetails,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'GetMoleculeImage200Response',) as GetMoleculeImage200Response;
    
    }
    return null;
  }
}
