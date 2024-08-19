# smile_it_api.api.MoleculeApi

## Load the API package
```dart
import 'package:smile_it_api/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getMoleculeDetails**](MoleculeApi.md#getmoleculedetails) | **GET** /getMoleculeDetails | Obtener detalles e imagen de una molécula


# **getMoleculeDetails**
> GetMoleculeDetails200Response getMoleculeDetails(smile)

Obtener detalles e imagen de una molécula

Retorna la estructura de una molécula y su imagen SVG basada en un SMILES proporcionado.

### Example
```dart
import 'package:smile_it_api/api.dart';

final api = SmileItApi().getMoleculeApi();
final String smile = smile_example; // String | SMILES que describe la molécula de la cual se desea obtener la imagen y detalles.

try {
    final response = api.getMoleculeDetails(smile);
    print(response);
} catch on DioException (e) {
    print('Exception when calling MoleculeApi->getMoleculeDetails: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **smile** | **String**| SMILES que describe la molécula de la cual se desea obtener la imagen y detalles. | 

### Return type

[**GetMoleculeDetails200Response**](GetMoleculeDetails200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

